.class public final enum Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;
.super Ljava/lang/Enum;
.source "CameraPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/CameraPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Flag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

.field public static final enum ANIMATE_FOR_BACK_SWITCH:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

.field public static final enum ANIMATE_FOR_CROSS_FADE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

.field public static final enum ANIMATE_FOR_IMAGE_RATIO:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

.field public static final enum CAMERA_SWITCHING:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

.field public static final enum CAMERA_SWITCH_ACTIVE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

.field public static final enum COPY_FRAME_FOR_PREVIEW_CHANGE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

.field public static final enum DEFE_SURFACE_LOADED:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

.field public static final enum ENTER_HDR10_MODE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

.field public static final enum EXIT_HDR10_MODE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

.field public static final enum FIRST_FRAME_RECEIVED:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

.field public static final enum RESTORE_ALPHA_FOR_GALLERY_FADE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

.field public static final enum SERVICE_MODE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

.field public static final enum SET_REPEATING_COMPLETE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

.field public static final enum SURFACE_READY:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

.field public static final enum VIDEO_STOP:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;


# direct methods
.method public static constructor <clinit>()V
    .locals 18

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    const-string v1, "CAMERA_SWITCH_ACTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->CAMERA_SWITCH_ACTIVE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    const-string v3, "ANIMATE_FOR_IMAGE_RATIO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ANIMATE_FOR_IMAGE_RATIO:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    const-string v5, "SERVICE_MODE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->SERVICE_MODE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 2
    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    const-string v7, "COPY_FRAME_FOR_PREVIEW_CHANGE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->COPY_FRAME_FOR_PREVIEW_CHANGE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    const-string v9, "ANIMATE_FOR_CROSS_FADE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ANIMATE_FOR_CROSS_FADE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    const-string v11, "SURFACE_READY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->SURFACE_READY:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 3
    new-instance v11, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    const-string v13, "SET_REPEATING_COMPLETE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->SET_REPEATING_COMPLETE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    new-instance v13, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    const-string v15, "ANIMATE_FOR_BACK_SWITCH"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ANIMATE_FOR_BACK_SWITCH:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    new-instance v15, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    const-string v14, "RESTORE_ALPHA_FOR_GALLERY_FADE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->RESTORE_ALPHA_FOR_GALLERY_FADE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    new-instance v14, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    const-string v12, "VIDEO_STOP"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->VIDEO_STOP:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 4
    new-instance v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    const-string v10, "CAMERA_SWITCHING"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->CAMERA_SWITCHING:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    new-instance v10, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    const-string v8, "ENTER_HDR10_MODE"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->ENTER_HDR10_MODE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    new-instance v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    const-string v6, "EXIT_HDR10_MODE"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->EXIT_HDR10_MODE:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    const-string v4, "DEFE_SURFACE_LOADED"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->DEFE_SURFACE_LOADED:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    .line 5
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    const-string v2, "FIRST_FRAME_RECEIVED"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->FIRST_FRAME_RECEIVED:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    const/16 v2, 0xf

    new-array v2, v2, [Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    const/16 v16, 0x0

    aput-object v0, v2, v16

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    aput-object v4, v2, v6

    .line 6
    sput-object v2, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->$VALUES:[Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;
    .locals 1

    .line 1
    const-class v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->$VALUES:[Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    invoke-virtual {v0}, [Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/widgets/gl/CameraPreview$Flag;

    return-object v0
.end method
