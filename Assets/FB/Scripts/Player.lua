local _initialPostionY = 0

--　重力
local _v = 0
local _gravityForce = 1
local _limitSpeed = -10

-- プレイヤーの動きパラメータ
local _jumpForce = 3
local _isJumping = false

function OnCreate(self)
    self.SetPosition(0,_initialPostionY,0)
end

function Jump()
    _isJumping = true
    --ここに放物線の計算を入れる
    _v = _jumpForce
end

function OnUpdate(self)
    local pos = self.position
    
    -- 終端速度
    if _v < _limitSpeed then
        _v = _limitSpeed
    else
        _v = _v - _gravityForce
    end

    local pos = self.position
    pos.y = pos.y + _v
end