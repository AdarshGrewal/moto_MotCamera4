.class public Lcom/motorola/camera/shared/OrientationEvent;
.super Landroid/view/OrientationEventListener;
.source "OrientationEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;
    }
.end annotation


# static fields
.field public static mCurrentOrientation:I


# instance fields
.field public mDisplayRotation:I

.field public final mOnRotationChangeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field public mOrientation:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/motorola/camera/shared/OrientationEvent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/shared/OrientationEvent;->mOnRotationChangeListeners:Ljava/util/Set;

    const-string/jumbo v0, "window"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 5
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x10e

    goto :goto_0

    :cond_1
    const/16 p1, 0xb4

    goto :goto_0

    :cond_2
    const/16 p1, 0x5a

    .line 6
    :goto_0
    iput p1, p0, Lcom/motorola/camera/shared/OrientationEvent;->mDisplayRotation:I

    return-void
.end method


# virtual methods
.method public declared-synchronized dispatchOnRotationChanged()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/shared/OrientationEvent;->mOnRotationChangeListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;

    .line 2
    sget v2, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    iget v3, p0, Lcom/motorola/camera/shared/OrientationEvent;->mDisplayRotation:I

    invoke-interface {v1, v2, v3}, Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;->onRotationChanged(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onOrientationChanged(I)V
    .locals 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 1
    :cond_0
    iget v1, p0, Lcom/motorola/camera/shared/OrientationEvent;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v0, :cond_1

    goto :goto_0

    :cond_1
    sub-int v0, p1, v1

    .line 2
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    rsub-int v3, v0, 0x168

    .line 3
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v3, 0x3c

    if-lt v0, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    add-int/lit8 p1, p1, 0x2d

    .line 4
    div-int/lit8 p1, p1, 0x5a

    mul-int/lit8 p1, p1, 0x5a

    rem-int/lit16 v1, p1, 0x168

    .line 5
    :cond_3
    iput v1, p0, Lcom/motorola/camera/shared/OrientationEvent;->mOrientation:I

    .line 6
    sget p1, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    if-eq p1, v1, :cond_4

    .line 7
    sput v1, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    .line 8
    invoke-virtual {p0}, Lcom/motorola/camera/shared/OrientationEvent;->dispatchOnRotationChanged()V

    :cond_4
    return-void
.end method
