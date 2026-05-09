local _score = 0
local _sceneState = nil

local function GoTitle()
    _sceneState = "title"
end

local function GoGame()
    _sceneState = "game"
    _score = 0

    _G.Jump()
end

local function GoGameOver()
    _sceneState = "gameover"
end

local function OnButtonPressInGame()
    _G.Jump()
end

function SetScneneState()
    if _sceneState == "title" then
        GoGame()
    elseif _sceneState == "game" then
        OnButtonPressInGame()
    elseif _sceneState == "gameover" then
        GoTitle()
    end
end

function OnButtonPress(self,button)
    -- if 
    -- button == Input.isPressed(Input.Circle) or 
    -- button == Input.isPressed(Input.Cross) or
    -- button == Input.isPressed(Input.Square) or
    -- button == Input.isPressed(Input.Triangle)
    -- then
    --     SetScneneState()
    -- end
    
end

function Start()
    GoTitle()
end