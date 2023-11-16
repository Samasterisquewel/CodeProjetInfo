//Documentation :
//	*Types particuliers : https://moodle.insa-rouen.fr/pluginfile.php/121349/mod_resource/content/5/04-StructuresEnsembles.pdf
//	*Tableaux : https://moodle.insa-rouen.fr/pluginfile.php/122491/mod_resource/content/5/03-Tableaux.pdf
//	*Code de base : https://moodle.insa-rouen.fr/pluginfile.php/121468/mod_resource/content/1/SyntaxePascal.pdf
//	*Fichier : https://moodle.insa-rouen.fr/pluginfile.php/41365/mod_resource/content/12/05-Fichiers.pdf
//	*Bibliothèque SDL : https://moodle.insa-rouen.fr/pluginfile.php/217236/mod_resource/content/3/SDL_Pr-info.pdf
//	 [voir aussi les exemples sur Moodle]

program projetinfoversion1;
//begin

uses crt;
uses sysutils;
uses sdl2;
uses dateutils;

//[...]

const NB_FRAMES = 7;
const Temps_MAX = 120;
const Resolution = {mettre le nombre de pixels représentant une case longueux/largeur de case}
const Surface_Lx = {mettre la longueur de la fenêtre}
const Surface_ly = {mettre la largeur de la fenêtre}
const Distance_Fin = {mettre la distance maximale}

type Coins = (xmin, xmax, ymin, ymax);
type TypeObstacle = {liste des obstacles};
type hitbox = Array [xmin..xmax][ymin..ymax] of Integer;
type Obstacle = record 
	sdlObs : sdlType;
	typeObs : TypeObstacle;
	HBObs : hitbox;
	effetObs : Real;
	vObs : Real;
end;

{Lorsqu'un obstacle est généré, penser à créer un booléen sur creationObs qui affiche TRUE dès qu'un obstacle est généré, et passé sur FALSE juste après.}

type Image = record
	sdlimage : PDSL_TEXTURE;
	image_Lx : integer;
	image_ly : integer;
end;
type Perso = record
	sdlPerso : array [1..NB_FRAMES] of sdlType;
	vitesse : real;
	hSaut, hBaisse : real;
	HBPerso : hitbox;
	distance : real;
end;
type Chiffre : record
	zero : PDSL_TEXTURE
	un : PDSL_TEXTURE
	deux : PDSL_TEXTURE
	trois : PDSL_TEXTURE
	quatre : PDSL_TEXTURE
	cinq : PDSL_TEXTURE
	six : PDSL_TEXTURE
	sept : PDSL_TEXTURE
	huit : PDSL_TEXTURE
	neuf : PDSL_TEXTURE
end;

function echecPartie(chrono : Real) : boolean;
begin
if (chrono  <= 0) then
	echecPartie := TRUE;
end;

function victoirePartie(chrono : Real ; player : Perso) : boolean;
begin
if (player.distance = Distance_Fin) and (chrono > 0) then
	victoirePartie := TRUE;
end;

procedure finPartie(chrono : Real ; player : Perso);
begin
repeat
	echecPartie(chrono);
	victoirePartie(chrono, player);
until (echecPartie(chrono) = TRUE) xor (victoirePartie(chrono, player) = TRUE);
{montrer le score et retourner au menu}
end;

procedure montre(chrono : real ; player : Perso);
var T :  TTimeStamp
begin
{chrono := Temps_MAX
T := TimeStampToMSecs(Time)
repeat
chrono := chrono-(TimeStampToMSecs(Time)*0.001-T*0.001)
until (echecPartie(chrono) = TRUE) or (victoirePartie(chrono, player) = TRUE);
finPartie(chrono, player)}
end;

procedure gestionEcran (player : Perso ; effet : TTimeStamp); {fonction à utiliser pour incrémenter la vitesse : sqrt(x)}
begin
effet = 0
repeat
	if (effet <> 0)

end;

procedure afficheFond(sdlFond : PDSL_TEXTURE);
{chargement de l’image comme texture}
sword := IMG_LoadTexture(sdlRenderer, '{dossier} / {nom de l''image} . png');

procedure afficheObs(obs : Obstacle);
procedure affichePerso(player : Perso);
procedure afficheMontre(chiffreCent, chiffreDiz, chiffreUni, chiffreDecim : Chiffre ; point : PDSL_TEXTURE, chrono : {});
begin
chiffreCent.zero = IMG_LoadTexture (sdlRenderer , '{dossier} / {nom de l''image} . png');
chiffreCent.un = IMG_LoadTexture (sdlRenderer , '{dossier} / {nom de l''image} . png');
chiffreCent.deux = IMG_LoadTexture (sdlRenderer , '{dossier} / {nom de l''image} . png');
chiffreCent.trois = IMG_LoadTexture (sdlRenderer , '{dossier} / {nom de l''image} . png');
chiffreCent.quatre = IMG_LoadTexture (sdlRenderer , '{dossier} / {nom de l''image} . png');
chiffreCent.cinq = IMG_LoadTexture (sdlRenderer , '{dossier} / {nom de l''image} . png');
chiffreCent.six = IMG_LoadTexture (sdlRenderer , '{dossier} / {nom de l''image} . png');
chiffreCent.sept = IMG_LoadTexture (sdlRenderer , '{dossier} / {nom de l''image} . png');
chiffreCent.huit = IMG_LoadTexture (sdlRenderer , '{dossier} / {nom de l''image} . png');
chiffreCent.neuf = IMG_LoadTexture (sdlRenderer , '{dossier} / {nom de l''image} . png');

chiffreDiz.zero = IMG_LoadTexture (sdlRenderer , '{dossier} / {nom de l''image} . png');
chiffreDiz.un = IMG_LoadTexture (sdlRenderer , '{dossier} / {nom de l''image} . png');
chiffreDiz.deux = IMG_LoadTexture (sdlRenderer , '{dossier} / {nom de l''image} . png');
chiffreDiz.trois = IMG_LoadTexture (sdlRenderer , '{dossier} / {nom de l''image} . png');
chiffreDiz.quatre = IMG_LoadTexture (sdlRenderer , '{dossier} / {nom de l''image} . png');
chiffreDiz.cinq = IMG_LoadTexture (sdlRenderer , '{dossier} / {nom de l''image} . png');
chiffreDiz.six = IMG_LoadTexture (sdlRenderer , '{dossier} / {nom de l''image} . png');
chiffreDiz.sept = IMG_LoadTexture (sdlRenderer , '{dossier} / {nom de l''image} . png');
chiffreDiz.huit = IMG_LoadTexture (sdlRenderer , '{dossier} / {nom de l''image} . png');
chiffreDiz.neuf = IMG_LoadTexture (sdlRenderer , '{dossier} / {nom de l''image} . png');

chiffreUni.zero = IMG_LoadTexture (sdlRenderer , '{dossier} / {nom de l''image} . png');
chiffreUni.un = IMG_LoadTexture (sdlRenderer , '{dossier} / {nom de l''image} . png');
chiffreUni.deux = IMG_LoadTexture (sdlRenderer , '{dossier} / {nom de l''image} . png');
chiffreUni.trois = IMG_LoadTexture (sdlRenderer , '{dossier} / {nom de l''image} . png');
chiffreUni.quatre = IMG_LoadTexture (sdlRenderer , '{dossier} / {nom de l''image} . png');
chiffreUni.cinq = IMG_LoadTexture (sdlRenderer , '{dossier} / {nom de l''image} . png');
chiffreUni.six = IMG_LoadTexture (sdlRenderer , '{dossier} / {nom de l''image} . png');
chiffreUni.sept = IMG_LoadTexture (sdlRenderer , '{dossier} / {nom de l''image} . png');
chiffreUni.huit = IMG_LoadTexture (sdlRenderer , '{dossier} / {nom de l''image} . png');
chiffreUni.neuf = IMG_LoadTexture (sdlRenderer , '{dossier} / {nom de l''image} . png');

chiffreDecim.zero = IMG_LoadTexture (sdlRenderer , '{dossier} / {nom de l''image} . png');
chiffreDecim.un = IMG_LoadTexture (sdlRenderer , '{dossier} / {nom de l''image} . png');
chiffreDecim.deux = IMG_LoadTexture (sdlRenderer , '{dossier} / {nom de l''image} . png');
chiffreDecim.trois = IMG_LoadTexture (sdlRenderer , '{dossier} / {nom de l''image} . png');
chiffreDecim.quatre = IMG_LoadTexture (sdlRenderer , '{dossier} / {nom de l''image} . png');
chiffreDecim.cinq = IMG_LoadTexture (sdlRenderer , '{dossier} / {nom de l''image} . png');
chiffreDecim.six = IMG_LoadTexture (sdlRenderer , '{dossier} / {nom de l''image} . png');
chiffreDecim.sept = IMG_LoadTexture (sdlRenderer , '{dossier} / {nom de l''image} . png');
chiffreDecim.huit = IMG_LoadTexture (sdlRenderer , '{dossier} / {nom de l''image} . png');
chiffreDecim.neuf = IMG_LoadTexture (sdlRenderer , '{dossier} / {nom de l''image} . png');

point = IMG_LoadTexture (sdlRenderer , '{dossier} / {nom de l''image} . png');

repeat
case of chrono
{>=900} : 
end;

case of chrono

end;

case of chrono

end;

case of chrono

end;

end;

procedure affichage(var sdlwindow : PSDL_Window ; var sdlRenderer : PSDL_Renderer); ;
var sword : PSDL_TEXTURE );
begin
{charger la bibliotheque}
SDL_Init (SDL_INIT_VIDEO);
{initialiser la fenetre et le moteur de rendu : largeur , hauteur , type de fenetre}
SDL_CreateWindowAndRenderer(Surface_Lx, Surface_ly, SDL_WINDOW_SHOWN, @sdlwindow, @sdlRenderer);
repeat
{....}


until {fin du programme};
end ;

//end.
