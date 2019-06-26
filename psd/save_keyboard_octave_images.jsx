function showEffects(layerName) {
    var idShw = charIDToTypeID( "Shw " );
    var desc12 = new ActionDescriptor();
    var idnull = charIDToTypeID( "null" );
    var list5 = new ActionList();
    var ref5 = new ActionReference();
    var idLefx = charIDToTypeID( "Lefx" );
    ref5.putClass( idLefx );
    var idLyr = charIDToTypeID( "Lyr " );
    ref5.putName( idLyr, layerName );
    list5.putReference( ref5 );
    desc12.putList( idnull, list5 );
    executeAction( idShw, desc12, DialogModes.NO );
}

function hideEffects(layerName) {
    var idHd = charIDToTypeID( "Hd  " );
    var desc13 = new ActionDescriptor();
    var idnull = charIDToTypeID( "null" );
    var list6 = new ActionList();
    var ref6 = new ActionReference();
    var idLefx = charIDToTypeID( "Lefx" );
    ref6.putClass( idLefx );
    var idLyr = charIDToTypeID( "Lyr " );
    ref6.putName( idLyr, layerName );
    list6.putReference( ref6 );
    desc13.putList( idnull, list6 );
    executeAction( idHd, desc13, DialogModes.NO );
}

var pianoDocument = app.activeDocument;
var pianoLayer = pianoDocument.layerSets.getByName("Piano");
var octave00 = pianoLayer.layerSets.getByName("0");
var octave00Layers = octave00.artLayers;

opts = new ExportOptionsSaveForWeb();
opts.format = SaveDocumentType.PNG;
opts.PNG8 = false;
opts.transparency = true;
opts.quality = 100;

for (var i = octave00Layers.length - 1; i >= 0; i--) {

    var layerName = octave00Layers[i].name;

    var fileName = "piano-keyboard-octave-front" + layerName + ".png"

    showEffects(layerName)

    pngFile = new File("/Users/shant/Desktop/export/" + fileName);
    pianoDocument.exportDocument(pngFile, ExportType.SAVEFORWEB, opts);

    hideEffects(layerName)
}
