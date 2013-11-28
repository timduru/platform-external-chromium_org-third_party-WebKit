(function() {
    var templateParagraph = null;
    var templateRegion = null;
    var DEFAULT_PARAGRAPH_COUNT = 100;
    var DEFAULT_REGION_COUNT = 100;

    function createParagraphNode(breakChance) {
        if (!templateParagraph) {
            templateParagraph = document.createElement("p");
            templateParagraph.innerHTML = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at turpis placerat sapien congue viverra nec sed felis.\
                Aenean aliquam, justo eu condimentum pharetra, arcu eros blandit metus, nec lacinia nisi orci vitae nunc.\
                Proin orci libero, accumsan non dignissim at, sodales in sapien. Curabitur dui nibh, venenatis vel tempus vel, accumsan nec velit.\
                Nam sit amet tempor lacus. Sed mollis dolor nibh, non tempus leo. Donec magna odio, commodo id porta in, aliquam mollis eros.\
                Pellentesque vulputate gravida ligula in elementum. Fusce lacinia massa justo, at porttitor orci.\
                Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec odio quam, pulvinar ut porttitor ac, tempor vitae ligula.\
                Cras aliquet sapien id sapien mollis nec pulvinar mauris adipiscing. Praesent porttitor consequat augue, sit amet mollis justo condimentum eu.\
                Etiam ut erat pellentesque orci congue interdum. Nulla eu eros mi.\
                Curabitur rutrum, lorem ac malesuada pellentesque, sapien risus consequat massa, eget pellentesque nunc nulla vel sem.";
            templateParagraph.className = "contentParagraph";
        }

        var paragraph = templateParagraph.cloneNode(true);
        var randomNumber = PerfTestRunner.random();
        if (randomNumber < breakChance)
            paragraph.className = paragraph.className + " breakAfter";
        return paragraph;
    }

    function createRegionNode(regionWidth, regionHeight, regionMaxHeight) {
        if (!templateRegion) {
            templateRegion = document.createElement("div");
            templateRegion.className = "region";
        }

        var region = templateRegion.cloneNode(false);
        region.style.width = regionWidth;
        region.style.height = regionHeight;
        region.style.maxHeight = regionMaxHeight;
        return region;
    }

    function createArticle(paragraphCount, breakChance) {
        var article = document.createElement("div");
        for (var i = 0 ; i < paragraphCount; ++i) {
            article.appendChild(createParagraphNode(breakChance));
        }
        article.className = "articleNone";
        return article;
    }

    function createRegions(regionWidth, regionHeight, regionCount, regionMaxHeight) {
        var regionContainer = document.createElement("div");
        for (var i = 0; i < regionCount; ++i) {
            regionContainer.appendChild(createRegionNode(regionWidth, regionHeight, regionMaxHeight));
        }
        regionContainer.className = "regionContainer";
        return regionContainer;
    }

    function createRegionsTest(regionWidth, regionHeight, regionCount, paragraphCount, regionMaxHeight, breakChance) {
        paragraphCount = paragraphCount || DEFAULT_PARAGRAPH_COUNT;
        regionCount = regionCount || DEFAULT_REGION_COUNT;
        regionMaxHeight = regionMaxHeight || "auto";
        breakChance = breakChance || 0;

        var article = createArticle(paragraphCount, breakChance);
        var regions = createRegions(regionWidth, regionHeight, regionCount, regionMaxHeight);
        document.body.appendChild(article);
        document.body.appendChild(regions);
        return {
            description: "Testing regions with " + regionCount + " regions @{width: " + regionWidth + ", height: " + regionHeight + 
            ", maxHeight: " + regionMaxHeight + "} and " + paragraphCount + " paragraphs",
            run: function() {
                article.className = "articleInFlow";
                document.body.offsetTop;
            },
            setup: function() {
                PerfTestRunner.resetRandomSeed();
                article.className = "articleNone";
                document.body.offsetTop;
            },
            done: function() {
                document.body.removeChild(article);
                document.body.removeChild(regions);
                templateParagraph = null;
                templateRegion = null;
            }
        };
    }

    function mouseMoveToRegionCenter(region) {
        var rect = region.getBoundingClientRect();
        eventSender.mouseMoveTo(rect.left + (rect.width / 2), rect.top + (rect.height / 2));
    }

    function performSelection(regionCount) {
        var regions = document.getElementsByClassName("region");

        if (window.eventSender) {
            mouseMoveToRegionCenter(regions[0]);
            eventSender.mouseDown();

            for (var i = 1; i < regionCount; i++)
                mouseMoveToRegionCenter(regions[i]);

            eventSender.mouseUp();
        }
    }

    function createRegionsSelectionTest(regionCount) {
        var article = createArticle(regionCount, 1);
        article.className = "articleInFlow";
        var regions = createRegions("600px", "auto", regionCount, "auto");
        document.body.appendChild(article);
        document.body.appendChild(regions);
        return {
            description: "Testing selection with " + regionCount + " regions. Select text from first region to last one passing through all the regions.",
            run: function() {
                performSelection(regionCount);
            },
            setup: function() {
                window.getSelection().removeAllRanges();
            },
            done: function() {
                document.body.removeChild(article);
                document.body.removeChild(regions);
                templateParagraph = null;
                templateRegion = null;
            }
        };
    }

    window.createRegionsTest = createRegionsTest;
    window.createRegionsSelectionTest = createRegionsSelectionTest;

})();
