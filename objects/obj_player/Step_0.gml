#region Movimentos Player
direita = keyboard_check(ord("D"))
cima = keyboard_check(ord("W"))
esquerda = keyboard_check(ord("A"))
baixo = keyboard_check(ord("S"))

horiveloc = (direita -esquerda)*veloc;

if place_meeting (x + horiveloc,y,obj_wall)
{
    while !place_meeting(x+sign(horiveloc),y,obj_wall)
    {
        x +=sign(horiveloc);
    }
    horiveloc = 0;
}
x +=horiveloc;


vertveloc = (baixo - cima) *veloc;

if place_meeting (x,y + vertveloc,obj_wall)
{
    while !place_meeting(x,y +sign(vertveloc),obj_wall)
    {
        y +=sign(vertveloc);
    }
    vertveloc = 0;
}
y +=vertveloc

#endregion

#region Mudando direção spritesheet

if(keyboard_check(ord("W")) && place_free(x,y -veloc))
{
    y -= veloc;
}
if(keyboard_check(ord("S")) && place_free(x,y +veloc))
{
    y += veloc;
    image_yscale = 1;
}
if(keyboard_check(ord("A")) && place_free(y,x -veloc))
{
    x -= veloc;
    image_xscale = -1;
   sprite_index = spr_player_walking_strip2;
}
if(keyboard_check(ord("D")) && place_free(y,x +veloc))
{
    x += veloc;
    image_xscale =1;
    sprite_index = spr_player_walking_strip2;
}
#endregion