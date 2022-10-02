.class public Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$1;
.super Ljava/lang/Object;
.source "ShutterComponent.java"

# interfaces
.implements Lcom/motorola/camera/Notifier$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object p2, Lcom/motorola/camera/Notifier$TYPE;->SHUTTER:Lcom/motorola/camera/Notifier$TYPE;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x3

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;

    .line 2
    iget v0, p2, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mShotType:I

    if-eq p1, v0, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 4
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;

    .line 5
    iget v0, p2, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mAnimationType:I

    if-ne p1, v0, :cond_0

    .line 6
    iget-object p1, p2, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$1$1;

    invoke-direct {p2, p0}, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$1$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
