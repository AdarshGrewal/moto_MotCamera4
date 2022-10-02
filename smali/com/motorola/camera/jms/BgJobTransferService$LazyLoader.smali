.class public final Lcom/motorola/camera/jms/BgJobTransferService$LazyLoader;
.super Ljava/lang/Object;
.source "BgJobTransferService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/jms/BgJobTransferService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LazyLoader"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/jms/BgJobTransferService;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/motorola/camera/jms/BgJobTransferService;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/jms/BgJobTransferService;-><init>(Lcom/motorola/camera/jms/BgJobTransferService$1;)V

    sput-object v0, Lcom/motorola/camera/jms/BgJobTransferService$LazyLoader;->INSTANCE:Lcom/motorola/camera/jms/BgJobTransferService;

    return-void
.end method
