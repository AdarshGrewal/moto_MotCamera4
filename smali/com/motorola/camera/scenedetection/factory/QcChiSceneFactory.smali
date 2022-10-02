.class public final Lcom/motorola/camera/scenedetection/factory/QcChiSceneFactory;
.super Lcom/motorola/camera/scenedetection/factory/SceneFactory;
.source "QcChiSceneFactory.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/motorola/camera/scenedetection/factory/SceneFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public getBlueSkyScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 8

    .line 1
    new-instance p0, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->BLUE_SKY:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    sget-object v2, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_OUT:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    const v3, 0x7f11001e

    const/16 v4, 0x70

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x30

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;Lcom/motorola/camera/scenedetection/scene/Scene$OptType;IIZLcom/motorola/camera/scenedetection/scene/FocusMode;I)V

    return-object p0
.end method

.method public getFlashScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 8

    .line 1
    new-instance p0, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->MOTO_FLASH:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    sget-object v2, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_OUT:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    const/4 v3, 0x0

    const/16 v4, 0x6c

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x30

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;Lcom/motorola/camera/scenedetection/scene/Scene$OptType;IIZLcom/motorola/camera/scenedetection/scene/FocusMode;I)V

    return-object p0
.end method

.method public getFlowerScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 8

    .line 1
    new-instance p0, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->FLOWER:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    sget-object v2, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_OUT:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    const v3, 0x7f110020

    const/16 v4, 0x71

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x30

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;Lcom/motorola/camera/scenedetection/scene/Scene$OptType;IIZLcom/motorola/camera/scenedetection/scene/FocusMode;I)V

    return-object p0
.end method

.method public getFoodScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 8

    .line 1
    new-instance p0, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->FOOD:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    sget-object v2, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_OUT:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    const v3, 0x7f110021

    const/16 v4, 0x64

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x30

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;Lcom/motorola/camera/scenedetection/scene/Scene$OptType;IIZLcom/motorola/camera/scenedetection/scene/FocusMode;I)V

    return-object p0
.end method

.method public getGreeneryScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 8

    .line 1
    new-instance p0, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->GREENERY:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    sget-object v2, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_OUT:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    const v3, 0x7f110022

    const/16 v4, 0x72

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x30

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;Lcom/motorola/camera/scenedetection/scene/Scene$OptType;IIZLcom/motorola/camera/scenedetection/scene/FocusMode;I)V

    return-object p0
.end method

.method public getSunsetScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 8

    .line 1
    new-instance p0, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->SUNRISE_SUNSET:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    sget-object v2, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_OUT:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    const v3, 0x7f110027

    const/16 v4, 0x65

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x20

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;Lcom/motorola/camera/scenedetection/scene/Scene$OptType;IIZLcom/motorola/camera/scenedetection/scene/FocusMode;I)V

    return-object p0
.end method

.method public getTextScene()Lcom/motorola/camera/scenedetection/scene/Scene;
    .locals 8

    .line 1
    new-instance p0, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;

    sget-object v1, Lcom/motorola/camera/scenedetection/scene/Scene$Type;->TEXT:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    sget-object v2, Lcom/motorola/camera/scenedetection/scene/Scene$OptType;->OPT_OUT:Lcom/motorola/camera/scenedetection/scene/Scene$OptType;

    const v3, 0x7f110028

    const/16 v4, 0x6d

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x30

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/scenedetection/scene/AndroidSceneTag;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;Lcom/motorola/camera/scenedetection/scene/Scene$OptType;IIZLcom/motorola/camera/scenedetection/scene/FocusMode;I)V

    return-object p0
.end method
