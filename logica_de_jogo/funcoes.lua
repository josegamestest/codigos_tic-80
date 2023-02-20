tempo = function()
		tempo = tempo +1
		print('pontos: '..tempo, 100, 100, 10 )
end

reset = function()
    player.x = game.w / 2 --posx
    player.y = game.h / 2 --posy
end

deltatime = function()
    if time >= 10 then
        print('time 10', 100, 100, 10 )
    end
end

btn_menu= function()
 	if btn(5) then
        print('borao apertado', 100, 100, 10 )
        else 
        print('borao nao apertado', 100, 100, 10 )
    end
end

