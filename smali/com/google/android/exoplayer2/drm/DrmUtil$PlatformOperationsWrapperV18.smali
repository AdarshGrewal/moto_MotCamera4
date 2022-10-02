.class public final Lcom/google/android/exoplayer2/drm/DrmUtil$PlatformOperationsWrapperV18;
.super Ljava/lang/Object;
.source "DrmUtil.java"


# direct methods
.method public static isDeniedByServerException(Ljava/lang/Throwable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "throwable"
        }
    .end annotation

    .line 1
    instance-of p0, p0, Landroid/media/DeniedByServerException;

    return p0
.end method

.method public static isNotProvisionedException(Ljava/lang/Throwable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "throwable"
        }
    .end annotation

    .line 1
    instance-of p0, p0, Landroid/media/NotProvisionedException;

    return p0
.end method
