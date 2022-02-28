let controladorIndex = {};

controladorIndex.renderIndex = (req, resp)=>{
    resp.render('index.ejs');
};
controladorIndex.renderFrmRegistro = (req, resp)=>{
    resp.render('formularioReg');
};
controladorIndex.regresar = (req, resp) => {
    resp.render("index.ejs");
};

module.exports = controladorIndex;