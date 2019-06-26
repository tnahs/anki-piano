function showEffects(layerName) {
    var idShw = charIDToTypeID("Shw ");
    var desc12 = new ActionDescriptor();
    var idnull = charIDToTypeID("null");
    var list5 = new ActionList();
    var ref5 = new ActionReference();
    var idLefx = charIDToTypeID("Lefx");
    ref5.putClass(idLefx);
    var idLyr = charIDToTypeID("Lyr ");
    ref5.putName(idLyr, layerName);
    list5.putReference(ref5);
    desc12.putList(idnull, list5);
    executeAction(idShw, desc12, DialogModes.NO);
}

function hideEffects(layerName) {
    var idHd = charIDToTypeID("Hd  ");
    var desc13 = new ActionDescriptor();
    var idnull = charIDToTypeID("null");
    var list6 = new ActionList();
    var ref6 = new ActionReference();
    var idLefx = charIDToTypeID("Lefx");
    ref6.putClass(idLefx);
    var idLyr = charIDToTypeID("Lyr ");
    ref6.putName(idLyr, layerName);
    list6.putReference(ref6);
    desc13.putList(idnull, list6);
    executeAction(idHd, desc13, DialogModes.NO);
}

var COUNT = 0;

Number.prototype.pad = function (size) {

    var s = String(this);
    while (s.length < (size || 2)) { s = "0" + s; }
    return s;
}

var pianoDocument = app.activeDocument;

var pianoLayer = pianoDocument.layerSets.getByName("Piano");

var octave00 = pianoLayer.layerSets.getByName("0");
var octave01 = pianoLayer.layerSets.getByName("1");
var octave02 = pianoLayer.layerSets.getByName("2");
var octave03 = pianoLayer.layerSets.getByName("3");
var octave04 = pianoLayer.layerSets.getByName("4");
var octave05 = pianoLayer.layerSets.getByName("5");
var octave06 = pianoLayer.layerSets.getByName("6");
var octave07 = pianoLayer.layerSets.getByName("7");
var octave08 = pianoLayer.layerSets.getByName("8");

var octave00Layers = octave00.artLayers;
var octave01Layers = octave01.artLayers;
var octave02Layers = octave02.artLayers;
var octave03Layers = octave03.artLayers;
var octave04Layers = octave04.artLayers;
var octave05Layers = octave05.artLayers;
var octave06Layers = octave06.artLayers;
var octave07Layers = octave07.artLayers;
var octave08Layers = octave08.artLayers;


opts = new ExportOptionsSaveForWeb();
opts.format = SaveDocumentType.PNG;
opts.PNG8 = false;
opts.transparency = true;
opts.quality = 100;


for (var i = octave00Layers.length - 1; i >= 0; i--) {

    COUNT++;

    var octaveNumber = octave00Layers[i].parent.name;
    var layerName = octave00Layers[i].name;

    var fileName = "piano-keyboard-front" + (COUNT).pad(2) + "-" + octaveNumber + "-" + layerName + ".png"

    showEffects(layerName)

    pngFile = new File("/Users/shant/Desktop/export/" + fileName);
    pianoDocument.exportDocument(pngFile, ExportType.SAVEFORWEB, opts);

    hideEffects(layerName)
}


for (var i = octave01Layers.length - 1; i >= 0; i--) {

    COUNT++;

    var octaveNumber = octave01Layers[i].parent.name;
    var layerName = octave01Layers[i].name;

    var fileName = "piano-keyboard-front" + (COUNT).pad(2) + "-" + octaveNumber + "-" + layerName + ".png"

    showEffects(layerName)

    pngFile = new File("/Users/shant/Desktop/export/" + fileName);
    pianoDocument.exportDocument(pngFile, ExportType.SAVEFORWEB, opts);

    hideEffects(layerName)
}

for (var i = octave02Layers.length - 1; i >= 0; i--) {

    COUNT++;

    var octaveNumber = octave02Layers[i].parent.name;
    var layerName = octave02Layers[i].name;

    var fileName = "piano-keyboard-front" + (COUNT).pad(2) + "-" + octaveNumber + "-" + layerName + ".png"

    showEffects(layerName)

    pngFile = new File("/Users/shant/Desktop/export/" + fileName);
    pianoDocument.exportDocument(pngFile, ExportType.SAVEFORWEB, opts);

    hideEffects(layerName)
}

for (var i = octave03Layers.length - 1; i >= 0; i--) {

    COUNT++;

    var octaveNumber = octave03Layers[i].parent.name;
    var layerName = octave03Layers[i].name;

    var fileName = "piano-keyboard-front" + (COUNT).pad(2) + "-" + octaveNumber + "-" + layerName + ".png"

    showEffects(layerName)

    pngFile = new File("/Users/shant/Desktop/export/" + fileName);
    pianoDocument.exportDocument(pngFile, ExportType.SAVEFORWEB, opts);

    hideEffects(layerName)
}

for (var i = octave04Layers.length - 1; i >= 0; i--) {

    COUNT++;

    var octaveNumber = octave04Layers[i].parent.name;
    var layerName = octave04Layers[i].name;

    var fileName = "piano-keyboard-front" + (COUNT).pad(2) + "-" + octaveNumber + "-" + layerName + ".png"

    showEffects(layerName)

    pngFile = new File("/Users/shant/Desktop/export/" + fileName);
    pianoDocument.exportDocument(pngFile, ExportType.SAVEFORWEB, opts);

    hideEffects(layerName)
}

for (var i = octave05Layers.length - 1; i >= 0; i--) {

    COUNT++;

    var octaveNumber = octave05Layers[i].parent.name;
    var layerName = octave05Layers[i].name;

    var fileName = "piano-keyboard-front" + (COUNT).pad(2) + "-" + octaveNumber + "-" + layerName + ".png"

    showEffects(layerName)

    pngFile = new File("/Users/shant/Desktop/export/" + fileName);
    pianoDocument.exportDocument(pngFile, ExportType.SAVEFORWEB, opts);

    hideEffects(layerName)
}

for (var i = octave06Layers.length - 1; i >= 0; i--) {

    COUNT++;

    var octaveNumber = octave06Layers[i].parent.name;
    var layerName = octave06Layers[i].name;

    var fileName = "piano-keyboard-front" + (COUNT).pad(2) + "-" + octaveNumber + "-" + layerName + ".png"

    showEffects(layerName)

    pngFile = new File("/Users/shant/Desktop/export/" + fileName);
    pianoDocument.exportDocument(pngFile, ExportType.SAVEFORWEB, opts);

    hideEffects(layerName)
}

for (var i = octave07Layers.length - 1; i >= 0; i--) {

    COUNT++;

    var octaveNumber = octave07Layers[i].parent.name;
    var layerName = octave07Layers[i].name;

    var fileName = "piano-keyboard-front" + (COUNT).pad(2) + "-" + octaveNumber + "-" + layerName + ".png"

    showEffects(layerName)

    pngFile = new File("/Users/shant/Desktop/export/" + fileName);
    pianoDocument.exportDocument(pngFile, ExportType.SAVEFORWEB, opts);

    hideEffects(layerName)
}

for (var i = octave08Layers.length - 1; i >= 0; i--) {

    COUNT++;

    var octaveNumber = octave08Layers[i].parent.name;
    var layerName = octave08Layers[i].name;

    var fileName = "piano-keyboard-front" + (COUNT).pad(2) + "-" + octaveNumber + "-" + layerName + ".png"

    showEffects(layerName)

    pngFile = new File("/Users/shant/Desktop/export/" + fileName);
    pianoDocument.exportDocument(pngFile, ExportType.SAVEFORWEB, opts);

    hideEffects(layerName)
}