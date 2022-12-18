/// @description Insert description here
// You can write your code in this editor
//test change
//test 2 change 2
//Проверка нажатых клавиш
A = keyboard_check(ord("A"))
D = keyboard_check(ord("D"))
SPACE = keyboard_check(vk_space)
//keyboard_check_pressed

//Вычисляем направление
move = D - A

//Задаем скорость
hspd = move * spd
vspd += grv

//Проверяем столкновения по горизонтали
if (place_meeting(x+hspd,y,oGround)){
	while (!place_meeting(x+sign(hspd),y,oGround))
	x+=sign(hspd)
	hspd = 0
}
x += hspd //двигаем по горизонтали

//Прыжок
if (place_meeting(x,y+1,oGround) and SPACE=1){
	vspd = -5 }

//Проверяем столкновения по вертикали
if (place_meeting(x,y+vspd,oGround)){
	while (!place_meeting(x,y+sign(vspd),oGround))
	y+=sign(vspd)
	vspd = 0
}
y += vspd //двигаем по вертикали



// ----- Анимации ------
if (D - A !=0)  //поворот персонажа
image_xscale = move

switch (state) {
	case PLAYER_STATES.IDLE:
	sprite_index = sPlayerIdle;
	break;
	
	case PLAYER_STATES.RUN:
	sprite_index = sPlayerRun;
	break;

	case PLAYER_STATES.JUMPUP:
	sprite_index = sPlayerJumpUP;
	break;
	case PLAYER_STATES.JUMPDOWN:
	sprite_index = sPlayerJumpDown;
	break;
	
}


if (x != xprevious or y!= yprevious) {
	state = PLAYER_STATES.RUN
		if (y > yprevious)
		state = PLAYER_STATES.JUMPDOWN
		if (y < yprevious)
		state = PLAYER_STATES.JUMPUP
} else
		state = PLAYER_STATES.IDLE
	
	
	


