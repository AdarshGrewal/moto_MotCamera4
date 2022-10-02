.class public final Lcom/motorola/camera/cli/util/WakeLockHelper;
.super Ljava/lang/Object;
.source "WakeLockHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/cli/util/WakeLockHelper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/motorola/camera/cli/util/WakeLockHelper$Companion;


# instance fields
.field public final mMainWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/cli/util/WakeLockHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/cli/util/WakeLockHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/motorola/camera/cli/util/WakeLockHelper;->Companion:Lcom/motorola/camera/cli/util/WakeLockHelper$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const p2, 0x1000001a

    .line 3
    sget v0, Lcom/motorola/camera/reflect/PowerManagerFW;->ACQUIRE_CAUSES_CLI_WAKEUP:I

    or-int/2addr p2, v0

    const-string v0, "motcamera:cameracli:main"

    .line 4
    invoke-virtual {p1, p2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/motorola/camera/cli/util/WakeLockHelper;->mMainWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    .line 5
    invoke-virtual {p1, p0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    :goto_1
    return-void
.end method
