/*
 * Copyright (C) 2011 Google Inc. All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * 1.  Redistributions of source code must retain the above copyright
 *     notice, this list of conditions and the following disclaimer.
 * 2.  Redistributions in binary form must reproduce the above copyright
 *     notice, this list of conditions and the following disclaimer in the
 *     documentation and/or other materials provided with the distribution.
 * 3.  Neither the name of Apple Computer, Inc. ("Apple") nor the names of
 *     its contributors may be used to endorse or promote products derived
 *     from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY GOOGLE AND ITS CONTRIBUTORS "AS IS" AND ANY
 * EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL APPLE OR ITS CONTRIBUTORS BE LIABLE FOR ANY
 * DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
 * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
 * THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include "config.h"
#include "core/dom/DOMException.h"

#include "ExceptionCode.h"

namespace WebCore {

static struct CoreException {
    const char* const name;
    const char* const message;
    const int code;
} coreExceptions[] = {
    { "IndexSizeError", "Index or size was negative, or greater than the allowed value.", 1 },
    { "HierarchyRequestError", "A Node was inserted somewhere it doesn't belong.", 3 },
    { "WrongDocumentError", "A Node was used in a different document than the one that created it (that doesn't support it).", 4 },
    { "InvalidCharacterError", "An invalid or illegal character was specified, such as in an XML name.", 5 },
    { "NoModificationAllowedError", "An attempt was made to modify an object where modifications are not allowed.", 7 },
    { "NotFoundError", "An attempt was made to reference a Node in a context where it does not exist.", 8 },
    { "NotSupportedError", "The implementation did not support the requested type of object or operation.", 9 },
    { "InUseAttributeError", "An attempt was made to add an attribute that is already in use elsewhere.", 10 },
    { "InvalidStateError", "An attempt was made to use an object that is not, or is no longer, usable.", 11 },
    { "SyntaxError", "An invalid or illegal string was specified.", 12 },
    { "InvalidModificationError", "An attempt was made to modify the type of the underlying object.", 13 },
    { "NamespaceError", "An attempt was made to create or change an object in a way which is incorrect with regard to namespaces.", 14 },
    { "InvalidAccessError", "A parameter or an operation was not supported by the underlying object.", 15 },
    { "TypeMismatchError", "The type of an object was incompatible with the expected type of the parameter associated to the object.", 17 },
    { "SecurityError", "An attempt was made to break through the security policy of the user agent.", 18 },
    { "NetworkError", "A network error occurred.", 19 },
    { "AbortError", "The user aborted a request.", 20 },
    { "URLMismatchError", "A worker global scope represented an absolute URL that is not equal to the resulting absolute URL.", 21 },
    { "QuotaExceededError", "An attempt was made to add something to storage that exceeded the quota.", 22 },
    { "TimeoutError", "A timeout occurred.", 23 },
    { "InvalidNodeTypeError", "The supplied node is invalid or has an invalid ancestor for this operation.", 24 },
    { "DataCloneError", "An object could not be cloned.", 25 },

    // These are IDB-specific errors.
    // FIXME: NotFoundError is duplicated to have a more specific error message.
    // https://code.google.com/p/chromium/issues/detail?id=252233
    { "NotFoundError", "An operation failed because the requested database object could not be found.", 8 },

    // More IDB-specific errors.
    { "UnknownError", "An unknown error occurred within Indexed Database.", 0 },
    { "ConstraintError", "A mutation operation in the transaction failed because a constraint was not satisfied.", 0 },
    { "DataError", "The data provided does not meet requirements.", 0 },
    { "TransactionInactiveError", "A request was placed against a transaction which is either currently not active, or which is finished.", 0 },
    { "ReadOnlyError", "A write operation was attempted in a read-only transaction.", 0 },
    { "VersionError", "An attempt was made to open a database using a lower version than the existing version.", 0 },

    // File system
    { "NotFoundError", "A requested file or directory could not be found at the time an operation was processed.", 8 },
    { "SecurityError", "It was determined that certain files are unsafe for access within a Web application, or that too many calls are being made on file resources.", 18 },
    { "AbortError", "An ongoing operation was aborted, typically with a call to abort().", 20 },
    { "NotReadableError", "The requested file could not be read, typically due to permission problems that have occurred after a reference to a file was acquired.", 0 },
    { "EncodingError", "A URI supplied to the API was malformed, or the resulting Data URL has exceeded the URL length limitations for Data URLs.", 0 },
    { "NoModificationAllowedError", "An attempt was made to write to a file or directory which could not be modified due to the state of the underlying filesystem.", 7 },
    { "InvalidStateError", "An operation that depends on state cached in an interface object was made but the state had changed since it was read from disk.", 11 },
    { "SyntaxError", "An invalid or unsupported argument was given, like an invalid line ending specifier.", 12 },
    { "InvalidModificationError", "The modification request was illegal.", 13 },
    { "QuotaExceededError", "The operation failed because it would cause the application to exceed its storage quota.", 22 },
    { "TypeMismatchError", "The path supplied exists, but was not an entry of requested type.", 17 },
    { "PathExistsError", "An attempt was made to create a file or directory where an element already exists.", 0 },

    // SQL
    { "UnknownError", "The operation failed for reasons unrelated to the database.", 0 },
    { "DatabaseError", "The operation failed for some reason related to the database.", 0 },
    { "VersionError", "The actual database version did not match the expected version.", 0 },
    { "TooLargeError", "Data returned from the database is too large.", 0 },
    { "QuotaExceededError", "Quota was exceeded.", 22 },
    { "SyntaxError", "Invalid or unauthorized statement; or the number of arguments did not match the number of ? placeholders.", 12 },
    { "ConstraintError", "A constraint was violated.", 0 },
    { "TimeoutError", "A transaction lock could not be acquired in a reasonable time.", 23 },
};

static const CoreException* getErrorEntry(ExceptionCode ec)
{
    size_t tableSize = WTF_ARRAY_LENGTH(coreExceptions);
    size_t tableIndex = ec - INDEX_SIZE_ERR;

    return tableIndex < tableSize ? &coreExceptions[tableIndex] : 0;
}

DOMException::DOMException(ExceptionCode ec)
{
    const CoreException* entry = getErrorEntry(ec);
    ASSERT(entry);
    if (!entry) {
        m_code = 0;
        m_name = "UnknownError";
        m_message = "Unknown Error";
    } else {
        m_code = entry->code;
        if (entry->name)
            m_name = entry->name;
        else
            m_name = "Error";
        m_message = entry->message;
    }

    ScriptWrappable::init(this);
}

PassRefPtr<DOMException> DOMException::create(ExceptionCode ec)
{
    return adoptRef(new DOMException(ec));
}

String DOMException::toString() const
{
    return name() + ": " + message();
}

String DOMException::getErrorName(ExceptionCode ec)
{
    const CoreException* entry = getErrorEntry(ec);
    ASSERT(entry);
    if (!entry)
        return "UnknownError";

    return entry->name;
}

String DOMException::getErrorMessage(ExceptionCode ec)
{
    const CoreException* entry = getErrorEntry(ec);
    ASSERT(entry);
    if (!entry)
        return "Unknown error.";

    return entry->message;
}

unsigned short DOMException::getLegacyErrorCode(ExceptionCode ec)
{
    const CoreException* entry = getErrorEntry(ec);
    ASSERT(entry);

    return (entry && entry->code) ? entry->code : 0;
}

} // namespace WebCore