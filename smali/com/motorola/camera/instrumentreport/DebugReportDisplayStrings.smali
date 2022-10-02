.class public Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;
.super Ljava/lang/Object;
.source "DebugReportDisplayStrings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$ShotToShotTranslateObject;,
        Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;,
        Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$BaseTranslateObject;
    }
.end annotation


# static fields
.field public static mDebugReportDisplayStrings:Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;


# instance fields
.field public mColdStartStringMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mTranslateObjectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$BaseTranslateObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;->mColdStartStringMap:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;->mTranslateObjectMap:Ljava/util/HashMap;

    .line 4
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 5
    iget-object v1, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;->mColdStartStringMap:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const v3, 0x7f11009c

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;->mColdStartStringMap:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const v3, 0x7f1104de

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;->mTranslateObjectMap:Ljava/util/HashMap;

    new-instance v8, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v2, 0x7f110189

    .line 8
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v4, "HAL_FOCUS_CALLBACK"

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "HAL_FOCUS_CALLBACK"

    .line 9
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v1, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;->mTranslateObjectMap:Ljava/util/HashMap;

    new-instance v8, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v2, 0x7f11018b

    .line 11
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v4, "HAL_GET_PARAMS"

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "HAL_GET_PARAMS"

    .line 12
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v1, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;->mTranslateObjectMap:Ljava/util/HashMap;

    new-instance v8, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v2, 0x7f110303

    .line 14
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v4, "HAL_SET_PARAMS"

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "HAL_SET_PARAMS"

    .line 15
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v1, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;->mTranslateObjectMap:Ljava/util/HashMap;

    new-instance v8, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v2, 0x7f1103c5

    .line 17
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v4, "HAL_SHUTTER_CALLBACK"

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "HAL_SHUTTER_CALLBACK"

    .line 18
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v1, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;->mTranslateObjectMap:Ljava/util/HashMap;

    new-instance v8, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v2, 0x7f1101c6

    .line 20
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v4, "HAL_PICTURE_CALLBACK_JPEG"

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "HAL_PICTURE_CALLBACK_JPEG"

    .line 21
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v1, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;->mTranslateObjectMap:Ljava/util/HashMap;

    new-instance v8, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const-string v4, "PANORAMA_SAVE"

    const-string v5, "Panorama save time"

    move-object v2, v8

    .line 23
    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "PANORAMA_SAVE"

    .line 24
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v1, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;->mTranslateObjectMap:Ljava/util/HashMap;

    new-instance v8, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v2, 0x7f110260

    .line 26
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const-string v4, "MR_STOP"

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "MR_STOP"

    .line 27
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v1, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;->mTranslateObjectMap:Ljava/util/HashMap;

    new-instance v8, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$ShotToShotTranslateObject;

    const v2, 0x7f1103c3

    .line 29
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v4, "SHOT_TO_SHOT_O"

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$ShotToShotTranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "SHOT_TO_SHOT_O"

    .line 30
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v1, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;->mTranslateObjectMap:Ljava/util/HashMap;

    new-instance v8, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$ShotToShotTranslateObject;

    const v2, 0x7f1103c4

    .line 32
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v4, "SHOT_TO_SHOT_UI_O"

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$ShotToShotTranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "SHOT_TO_SHOT_UI_O"

    .line 33
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v1, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;->mTranslateObjectMap:Ljava/util/HashMap;

    new-instance v8, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$ShotToShotTranslateObject;

    const v2, 0x7f1103c6

    .line 35
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v4, "SHUTTER_LAG_O"

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$ShotToShotTranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "SHUTTER_LAG_O"

    .line 36
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v1, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;->mTranslateObjectMap:Ljava/util/HashMap;

    new-instance v8, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v2, 0x7f1103f2

    .line 38
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v4, "START_PREVIEW"

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "START_PREVIEW"

    .line 39
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v1, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;->mTranslateObjectMap:Ljava/util/HashMap;

    new-instance v8, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v2, 0x7f1103f4

    .line 41
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    const-string v4, "START_TO_HAL_OPEN"

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "START_TO_HAL_OPEN"

    .line 42
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v1, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;->mTranslateObjectMap:Ljava/util/HashMap;

    new-instance v8, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v2, 0x7f1103f3

    .line 44
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const-string v4, "STARTUP_PREVIEW_FRAME_O"

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "STARTUP_PREVIEW_FRAME_O"

    .line 45
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v1, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;->mTranslateObjectMap:Ljava/util/HashMap;

    new-instance v8, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f11007f

    .line 48
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f110472

    .line 49
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const-string v4, "TOGGLE_CAMERA_O"

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "TOGGLE_CAMERA_O"

    .line 50
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v1, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;->mTranslateObjectMap:Ljava/util/HashMap;

    new-instance v9, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f11007f

    .line 53
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f110472

    .line 54
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    const-string v4, "TOGGLE_MODE_O"

    move-object v2, v9

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    const-string v2, "TOGGLE_MODE_O"

    .line 55
    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v1, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;->mTranslateObjectMap:Ljava/util/HashMap;

    new-instance v8, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v2, 0x7f11007d

    .line 57
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v4, "TOTAL_STARTUP_O"

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "TOTAL_STARTUP_O"

    .line 58
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v1, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;->mTranslateObjectMap:Ljava/util/HashMap;

    new-instance v8, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v2, 0x7f11007e

    .line 60
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v4, "TOTAL_STARTUP_W_CAF_O"

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "TOTAL_STARTUP_W_CAF_O"

    .line 61
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v1, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;->mTranslateObjectMap:Ljava/util/HashMap;

    const v2, 0x7f1104dd

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v9, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v3, 0x7f1104dd

    .line 63
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 64
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 65
    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v1, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;->mTranslateObjectMap:Ljava/util/HashMap;

    const v2, 0x7f1104cc

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v9, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v3, 0x7f1104cc

    .line 67
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 68
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 69
    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v1, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;->mTranslateObjectMap:Ljava/util/HashMap;

    const v2, 0x7f1103eb

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v9, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$ShotToShotTranslateObject;

    const v3, 0x7f1103eb

    .line 71
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 72
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$ShotToShotTranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 73
    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v1, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;->mTranslateObjectMap:Ljava/util/HashMap;

    const v2, 0x7f11029c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v9, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v3, 0x7f11029c

    .line 75
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 76
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 77
    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v1, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;->mTranslateObjectMap:Ljava/util/HashMap;

    const v2, 0x7f1102b2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v9, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v3, 0x7f1102b2

    .line 79
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 80
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 81
    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v1, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;->mTranslateObjectMap:Ljava/util/HashMap;

    const v2, 0x7f11018d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v9, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v3, 0x7f11018d

    .line 83
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 84
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 85
    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v1, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;->mTranslateObjectMap:Ljava/util/HashMap;

    new-instance v8, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v2, 0x7f1104c8

    .line 87
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const-string v4, "VIDEO_COMPLETION"

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "VIDEO_COMPLETION"

    .line 88
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v1, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;->mTranslateObjectMap:Ljava/util/HashMap;

    new-instance v8, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v2, 0x7f11029a

    .line 90
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v4, "MULTI_SHOT_TO_SHOT"

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "MULTI_SHOT_TO_SHOT"

    .line 91
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v1, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;->mTranslateObjectMap:Ljava/util/HashMap;

    new-instance v8, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v2, 0x7f110298

    .line 93
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v4, "MULTI_SHOT_AVG"

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "MULTI_SHOT_AVG"

    .line 94
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v1, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;->mTranslateObjectMap:Ljava/util/HashMap;

    new-instance v8, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v2, 0x7f110299

    .line 96
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v4, "MULTI_SHOT_COUNT"

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v2, "MULTI_SHOT_COUNT"

    .line 97
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v1, p0, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;->mTranslateObjectMap:Ljava/util/HashMap;

    new-instance v9, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;

    const v2, 0x7f110034

    .line 99
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v8, 0x1

    const-string v4, "TOTAL_CAPTURE_TIME_O"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings$TranslateObject;-><init>(Lcom/motorola/camera/instrumentreport/DebugReportDisplayStrings;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    const-string p0, "TOTAL_CAPTURE_TIME_O"

    .line 100
    invoke-virtual {v1, p0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
