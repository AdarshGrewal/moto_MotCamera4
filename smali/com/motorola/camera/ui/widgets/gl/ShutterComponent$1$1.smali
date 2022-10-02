.class public Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$1$1;
.super Ljava/lang/Object;
.source "ShutterComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$1;->onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$1;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$1$1;->this$1:Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$1$1;->this$1:Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$1;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->SHUTTER_DRAWABLES:[I

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->animateSingleShot(Z)V

    return-void
.end method
