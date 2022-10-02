.class public Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;
.super Ljava/lang/Object;
.source "McfStandAloneSubjectMotion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$Window;,
        Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$ImageInfo;
    }
.end annotation


# static fields
.field public static sFirstPlaneSent:Z

.field public static final sImagesInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion$ImageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static sStarted:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;->sImagesInfo:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;->sStarted:Z

    .line 3
    sput-boolean v0, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;->sFirstPlaneSent:Z

    :try_start_0
    const-string v0, "mcf-stand-alone-sm"

    .line 4
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not load libmcf-stand-alone-sm.so : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "McfStandAloneSubjectMotion"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    throw v0
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static analyzeImage(Landroid/media/Image;)F
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    const-string v2, "McfStandAloneSubjectMotion"

    const/16 v3, 0x23

    if-eq v0, v3, :cond_0

    const-string v0, "bad image format sent to Stand Alone Subject Motion: "

    .line 2
    invoke-static {v0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    .line 4
    array-length v3, v0

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    const-string p0, "bad Image.Planes[] length: "

    .line 5
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 v1, 0x0

    .line 6
    aget-object v0, v0, v1

    .line 7
    sget-boolean v1, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;->sFirstPlaneSent:Z

    if-nez v1, :cond_2

    .line 8
    sput-boolean v4, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;->sFirstPlaneSent:Z

    .line 9
    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result p0

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v2

    invoke-static {v1, p0, v2}, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;->initialize(III)V

    .line 10
    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;->analyzePlane(Ljava/nio/ByteBuffer;)F

    const/4 p0, 0x0

    return p0

    .line 11
    :cond_2
    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/mcf/McfStandAloneSubjectMotion;->analyzePlane(Ljava/nio/ByteBuffer;)F

    move-result p0

    return p0
.end method

.method public static native analyzePlane(Ljava/nio/ByteBuffer;)F
.end method

.method public static native deinitialize()V
.end method

.method public static native initialize(III)V
.end method
