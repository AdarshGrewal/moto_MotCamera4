.class public Lcom/motorola/camera/ActivityBase$1;
.super Ljava/lang/Object;
.source "ActivityBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ActivityBase;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ActivityBase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ActivityBase$1;->this$0:Lcom/motorola/camera/ActivityBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ActivityBase$1;->this$0:Lcom/motorola/camera/ActivityBase;

    .line 2
    iget-boolean v0, p0, Lcom/motorola/camera/ActivityBase;->mSkippedFirstOnResume:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/motorola/camera/ActivityBase;->mSkippedFirstOnResume:Z

    .line 4
    invoke-virtual {p0}, Lcom/motorola/camera/ActivityBase;->onResumeTasks()V

    :cond_0
    return-void
.end method
