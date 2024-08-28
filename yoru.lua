os.execute("chcp 65001")
local nomedoag="   Yoru"
local descricaodoag= " Um viajante entre dimensoes"
local emoji="🌌"
--atributos
local defesa=3
local ataque=7
local vida=5
local velocidade=8
local inteligencia=9

--Habilidades
local flash=2
local teleport=2
local clone=1



local function skill(skil)
    local tem="▰"
    local ntem="▱"
    local resultado=""
    for i = 1, 2, 1 do
        if i <= skil then
            resultado=resultado..tem  
        else
            resultado=resultado..ntem
    end
end
return resultado


end
local function barra(atributo)
    local cheio="▰"
    local vazio="▱" 
    
    local resultado=""
    for i = 1, 10, 1 do
        if i <= atributo then
            resultado=resultado..cheio
        else
            resultado=resultado..vazio

        end
    end

    return resultado
end


local function cartao ()
print("====================================================")
print("|")
print("|"..nomedoag)
print("|"..emoji..descricaodoag..emoji)
print("|")
print("|Status")
print("|Ataque:       "..barra(ataque))
print("|Defesa:       "..barra(defesa))
print("|Vida:         "..barra(vida))
print("|Velocidade:   "..barra(velocidade))
print("|Inteligencia: "..barra(inteligencia))
print("|")
print("|Habilidades")
print("|Clone:"..skill(clone))
print("|Flash:"..skill(flash))
print("|Teleport:"..skill(teleport))
print("|")
print("|Descricoes")
print("|Clone:Cria uma copia de si mesmo que anda para frente e cega inimigos qua a atacarem")
print("|Flash:Arremesa uma granada invisivel que quando atinge alguma superficie se revela e cega quem estiver olhando")
print("|Teleport:Coloca um ponto de teleport pelo mapa que pode ser utilizado para atravessar dimensoes")
print("|")
print("|")
print("|")
print("|")
print("====================================================")
end

local function usar()

    usando=io.read()

    if usando=="c" then
        clone=clone-1
    elseif usando=="f" then
        flash=flash-1
    elseif usando=="t" then
        teleport=teleport-1
    elseif usando ~="t" or "f" or "c" then
        usar()
    end
cartao()
end
cartao()
usar()