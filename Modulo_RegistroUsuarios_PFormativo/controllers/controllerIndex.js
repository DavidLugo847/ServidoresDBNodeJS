let controllerIndex = {};

controllerIndex.renderIndex = (req, resp) => {
    resp.render('index.ejs');
};

module.exports = controllerIndex;