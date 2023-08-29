/* user and group to drop privileges to */
static const char *user  = "amf";
static const char *group = "amf";

static const char *colorname[NUMCOLS] = {
    [INIT] =   "black",     /* after initialization */
    [INPUT] =  "#005577",   /* during input */
    [FAILED] = "#CC3333",   /* wrong password */
};

/* treat a cleared input like a wrong password (color) */
static const int failonclear = 1;

static const char *imgpath          = "/home/amf/Pictures/wallpapers/plant.xpm";
static const int imgwidth           = 1440;
static const int imgheight          = 900;
static const int imgoffsetx         = 50;
static const int imgoffsety         = 0;
static const int showimgonlyatstart = 1;
