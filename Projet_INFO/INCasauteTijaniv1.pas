program INCasauteTijaniv1 ;
program projetinfoversion1;
//begin

uses crt;
uses sysutils;
uses sdl2;
uses dateutils;
//[...]

const Temps_MAX = 120;
const Resolution = {mettre le nombre de pixels représentant une case longueur/largeur de case}
const Distance_Fin = {mettre la distance maximale, en cases}
const FrequenceFrames = 3 {fréquence des frames = une seconde / nb de frames};
const NB_Frames = 7 {nombre de frames par image};
const NB_Perso = 4 {nb de persos différents}
const Largeur_Fenetre = 36 {largeur de la surface de jeu};
const Longueur_Fenetre = 42 {longueur de la surface de jeu};

type Chronometre : record
	jeu : real;
	sys : real
end;

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
	sdlPerso : array [1..NB_Perso] of Image;
	vitesse : real; {vitesse du perso en cases/seconde en jeu !}
	hSaut, hBaisse : real;
	HBPerso : hitbox;
	distance : real;
end;
type Chiffre : record
	zero : Image
	un : Image
	deux : Image
	trois : Image
	quatre : Image
	cinq : Image
	six : Image
	sept : Image
	huit : Image
	neuf : Image
end;

function echecPartie(chrono : Chronometre) : boolean;
begin
if (chrono.jeu  <= 0) then
	echecPartie := TRUE;
end;

function victoirePartie(chrono : Chronometre ; player : Perso) : boolean;
begin
if (player.distance = Distance_Fin) and (chrono.jeu > 0) then
	victoirePartie := TRUE;
end;

procedure finPartie(chrono : Chronometre ; player : Perso);
begin
repeat
	echecPartie(chrono);
	victoirePartie(chrono, player);
until (echecPartie(chrono) = TRUE) xor (victoirePartie(chrono, player) = TRUE);

if (echecPartie(chrono) = TRUE) then

if (victoirePartie(chrono, player) = TRUE) then 

{montrer le score et retourner au menu}
end;

procedure montre(chrono : Chronometre ; player : Perso ; compteFrames : integer);
begin
{initialisation des chronomètres}
chrono.jeu := Temps_MAX;
chrono.sys := 0;
if compteFrames = NB_Frames then
	begin
	chrono.jeu := chrono.jeu - 1
	chrono.sys := chrono.sys + 1
	end;
end;

procedure gestionEcran (player : Perso ; chrono : Chronometre); {fonction à utiliser pour incrémenter la vitesse : sqrt(x)}
begin
//initialisations
effet = 0
player.vitesse = 0
player.distance = 0

repeat
	player.vitesse := sqrt(chrono.sys);
	player.distance := chrono.sys*player.vitesse;
until chrono.jeu <= 0;
end;

procedure gestionEffets(effet : integer ; chronoJeu : real);
begin
effet := 0
if (effet <> 0) then
	begin
	chronoJeu := chronoJeu - effet;
	effet := 0
	end;
end;
procedure initAffichage(sdlFenetre: PSDL_Window; sdlRenderer: PSDL_Renderer, compteFrames : integer);
begin

//initialisation du système vidéo
if SDL_Init(SDL_INIT_VIDEO) < 0 then Halt;

//initialisation et paramétrage de la fenêtre
sdlFenetre := SDL_CreateWindow('IN''ÇA SAUTE !', SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, Largeur_Fenetre, Longueur_Fenetre, SDL_WINDOW_HIDDEN OR SDL_INIT_AUDIO OR SDL_INIT_VIDEO OR SDL_INIT_TIMER OR SDL_INIT_EVENTS); 
if sdlFenetre = nil then Halt;

//initialisation du renderer
sdlRenderer := SDL_CreateRenderer(sdlFenetre, -1, 0);
if sdlRenderer = nil then Halt;

//génération des frames
sdlFenetre := SDL_Init(SDL_WINDOW_SHOWN)
repeat
	SDL_RenderPresent(sdlRenderer);
	SDL_Delay(FrequenceFrames);
	compteFrames := compteFrames + 1
	if compteFrames = NB_Frames then
		compteFrames := 0 ;
	
until (sdlFenetre = nil) {fin du programme, à modifier éventuellement}

//nettoyer la mémoire
SDL_DestroyRenderer(sdlRenderer);
SDL_DestroyWindow(sdlFenetre);

//fermer SDL2
SDL_Quit;

end;

//Procédure d'affichage, à copier dans la boucle de génération de frames

procedure afficheBASE(sdlRenderer : PSDL_RENDERER ; {<image>} : PSDL_TEXTURE);
var position : PSDL_RECT ;
begin
//chargement des images, une par une (pas le choix...)
{<image>} := IMG_LoadTexture ( sdlRenderer , ’ 'chemin d''accès dans le dossier'’ );

//L'image reste à la même position le temps que ses nouvelles positions chargent.
//Position et taille de l'élément  
// Tailles basées sur les coins inférieur-gauche{.} et supérieur-droit{°} d'une image{O} entrant dans un rectangle{[]} (.[O]°) définies comme :
//<Type Coins : record>
//<		infL_X : integer;>
//<		infL_Y : integer;>
//<		supR_X : integer;>
//<		supR_Y : integer;>
//<end.>
//Bien entendu, ces coins sont intégrés dans la structure Obstacle. Ici, j'attends une définition plus stricte des types.
position.x := infL_X;
position.y := supR_Y
position.W := supR_Y - infL_Y ;
position.H := supR_X - infL_X ;
//Note : le positionnement de l'image se base sur les coins supérieurs gauches.

//Copie de l'image dans le render
SDL_RenderCopy (sdlRenderer, {<image>}, nil, @destination_rect);

//Affichage de l'image chargée
SDL_RenderPresent(sdlRenderer);
SDL_Delay(FrequenceFrames); {permet d'afficher la frame proprement et en même temps que le render}
end ;

procedure afficheFond(sdlRenderer : PSDL_RENDERER ; {<fond>} : PSDL_TEXTURE ; player : Perso);
var position : PSDL_RECT ;
begin
//chargement du fond
{<fond>} := IMG_LoadTexture ( sdlRenderer , ’ 'chemin d''accès dans le dossier'’ );
position.x := 0 {car le bord gauche du fond est toujours à gauche de la fenêtre}
position.y := 0 {car le bord supérieur du fond est toujours en haut de la fenêtre}
position.W := {centré}
position.H := {centré}
//Note : le positionnement de l'image se base sur les coins supérieurs gauches.

//Copie de l'image dans le render
SDL_RenderCopy (sdlRenderer, {<image>}, nil, @destination_rect);

//Affichage de l'image chargée, qui bouge en fonction de la vitesse du perso
repeat
position.y := player.distance ;
SDL_RenderPresent(sdlRenderer);
SDL_Delay(FrequenceFrames); 
until {finPartie}

end ;

pro
