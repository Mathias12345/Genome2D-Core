package com.genome2d.ui.skin;
import com.genome2d.textures.GTexture;
class GUISkin3Slice extends GUISkin {
    public var texture1:GTexture;
    public var texture2:GTexture;
    public var texture3:GTexture;

    override public function getMinWidth():Float {
        return texture1.width+texture2.width+texture3.width;
    }

    override public function getMinHeight():Float {
        return texture1.height;
    }

    public function new(p_skinTextureIds:Array<String>) {
        super(p_skinTextureIds);
        type = GUISkinType.SLICE3;

        texture1 = GTexture.getTextureById(p_skinTextureIds[0]);
        texture2 = GTexture.getTextureById(p_skinTextureIds[1]);
        texture3 = GTexture.getTextureById(p_skinTextureIds[2]);
    }
}