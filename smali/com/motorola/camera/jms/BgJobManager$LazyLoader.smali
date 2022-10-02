.class public final Lcom/motorola/camera/jms/BgJobManager$LazyLoader;
.super Ljava/lang/Object;
.source "BgJobManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/jms/BgJobManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LazyLoader"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/jms/BgJobManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/motorola/camera/jms/BgJobManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/jms/BgJobManager;-><init>(Lcom/motorola/camera/jms/BgJobManager$1;)V

    sput-object v0, Lcom/motorola/camera/jms/BgJobManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/jms/BgJobManager;

    return-void
.end method
