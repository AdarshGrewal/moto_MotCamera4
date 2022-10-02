.class public final Lcom/motorola/camera/camerax_extensions/ExtensionEngine$Companion;
.super Ljava/lang/Object;
.source "ExtensionEngine.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/camerax_extensions/ExtensionEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static configureCaptureStreamNative$default(Lcom/motorola/camera/camerax_extensions/ExtensionEngine$Companion;JLandroid/graphics/Point;ILandroid/view/Surface;IZIZI)Landroid/view/Surface;
    .locals 12

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v8, v2

    goto :goto_0

    :cond_0
    move/from16 v8, p6

    :goto_0
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_1

    move v9, v2

    goto :goto_1

    :cond_1
    move/from16 v9, p7

    :goto_1
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    move v10, v2

    goto :goto_2

    :cond_2
    move/from16 v10, p8

    :goto_2
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    move v11, v2

    goto :goto_3

    :cond_3
    move/from16 v11, p9

    :goto_3
    move-wide v3, p1

    move-object v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    .line 1
    invoke-static/range {v3 .. v11}, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->configureCaptureStreamNative(JLandroid/graphics/Point;ILandroid/view/Surface;IZIZ)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method
