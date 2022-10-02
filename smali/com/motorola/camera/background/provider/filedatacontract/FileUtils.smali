.class public final Lcom/motorola/camera/background/provider/filedatacontract/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/background/provider/filedatacontract/FileUtils$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/motorola/camera/background/provider/filedatacontract/FileUtils$Companion;

.field public static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils;->Companion:Lcom/motorola/camera/background/provider/filedatacontract/FileUtils$Companion;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils;->TAG:Ljava/lang/String;

    return-void
.end method
