local one = FixedPoint.new(1)

--  初期設定
local _initialPostion = Vec3.new(0, 0, 0)
local _v = 0

--　重力
local _gravityForce = one / 200
local _limitSpeed = -3

-- プレイヤーの動きパラメータ
local _jumpForce = 3
local _isJumping = false

function onCreate(self)
    Entity.SetPosition(self, _initialPostion)
end

function jump()
    _isJumping = true
    --ここに放物線の計算を入れる
    _v = _jumpForce
end

function onUpdate(self,dt)
    -- 重力の計算
    if _v < _limitSpeed then
        _v = _limitSpeed
    else
        _v = _v - _gravityForce
    end

    -- 位置の更新
    local pos = self.position
    pos.y = pos.y + _v
    Entity.SetPosition(self, pos)
end