player= {
 spri  = 0, --indetificador do sprite
 x     = 240/2, --posx
 y	   = 136/ 2, --posy
 color = 0, --cores
 scal  = 1, --scala
 flip  = 0, --espelho
 rot   = 0, --rotacao
 w     = 1, --width
 h     = 1, --height
 spd = 1, --velocidade do jogador
}

--variavel draw recebe a fincao de desenhar o sprite
draw = function ()
spr(
    player.spri,
    player.x, --pos_x
    player.y, --pos_y
    player.color, --cor
    player.scal, --tamanho
    player.flip, --espelhar
    player.rot, --	rotate
    player.w, --tamanhoX
    player.h --tamanhoy
    )
end,


move = function ()
    enemy.x = enemy.x + (player.x - enemy.x) * 0.03
    enemy.y = enemy.y + (player.y - enemy.y) * 0.03
end
}

--controle jogador
--testa se o botao esta apertado e a posicao do jogador
-- no caso do maior e testado o tamanho do jogador com o limite da tela
move = function ()
		if btn(0) and	player.y > 0 then
            player.spri=1
	        player.y = player.y - player.spd
		end
		if btn(1) and
	        player.y+10<game.h then
            player.spri=0
	        player.y = player.y + player.spd
		end
			if btn(2) and player.x>0 then
	        player.x = player.x - player.spd
            player.flip=0
            player.spri=3
		end
		if btn(3) and
	        player.x+10<game.w then
	        player.x = player.x + player.spd
            player.flip=1
            player.spri=3
		end
	end
}
