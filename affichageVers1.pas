//Lien de tutos pour la SDL :
//https://www.freepascal-meets-sdl.net/sdl-tutorials/

program affichage;

uses SDL2;

var sdlFenetre: PSDL_Window; sdlRenderer: PSDL_Renderer;
const FrequenceFrames = 3{fréquence des frames = une seconde / nb de frames};
const NB_Frames = 4{nombre de frames};
const Largeur_Fenetre = 36{largeur de la surface de jeu};
const Longueur_Fenetre = 42{longueur de la surface de jeu};

begin

//initialisation du système vidéo
if SDL_Init(SDL_INIT_VIDEO) < 0 then Halt;

//initialisation et paramétrage de la fenêtre
sdlFenetre := SDL_CreateWindow('IN''ÇA SAUTE !', 50, 50, 500, 500, SDL_WINDOW_HIDDEN OR SDL_INIT_AUDIO OR SDL_INIT_VIDEO OR SDL_INIT_TIMER OR SDL_INIT_EVENTS); 
{fenêtre cachée pour l'initialisation - montrée en génération de frames}
if sdlFenetre = nil then Halt;

//initialisation du renderer
sdlRenderer := SDL_CreateRenderer(sdlFenetre, -1, 0);
if sdlRenderer = nil then Halt;

//génération des frames
sdlFenetre := SDL_Init(SDL_WINDOW_SHOWN)
repeat
	SDL_RenderPresent(sdlRenderer);
	SDL_Delay(FrequenceFrames);
until (sdlFenetre = nil) {fin du programme, à modifier éventuellement}

//chargement des images, une par une (pas le choix...)
{<image>} := IMG_LoadTexture ( sdlRenderer , ’ ressources / sword . png ’ );


//Procédure d'affichage, à copier dans la boucle de génération de frames

procedure affiche(sdlRenderer : PSDL_RENDERER ; {<image>} : PSDL_TEXTURE);
var position : TSDL_RECT ;
begin
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

//Copie de l'image dans le render
SDL_RenderCopy (sdlRenderer, {<image>}, nil, @destination_rect);

//Affichage de l'image chargée
SDL_RenderPresent(sdlRenderer);
SDL_Delay(FrequenceFrames); {permet d'afficher la frame proprement et en même temps que le render}
end ;

//nettoyer la mémoire
SDL_DestroyRenderer(sdlRenderer);
SDL_DestroyWindow(sdlFenetre);

//fermer SDL2
SDL_Quit;

end.  
