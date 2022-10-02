.class public Lcom/motorola/camera/saving/SaveImageService$1;
.super Ljava/lang/Object;
.source "SaveImageService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$listener:Lcom/motorola/camera/saving/MemoryListener;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/saving/SaveImageService;Lcom/motorola/camera/saving/MemoryListener;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/motorola/camera/saving/SaveImageService$1;->val$listener:Lcom/motorola/camera/saving/MemoryListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService$1;->val$listener:Lcom/motorola/camera/saving/MemoryListener;

    invoke-interface {p0}, Lcom/motorola/camera/saving/MemoryListener;->onMemoryAvailable()V

    return-void
.end method
