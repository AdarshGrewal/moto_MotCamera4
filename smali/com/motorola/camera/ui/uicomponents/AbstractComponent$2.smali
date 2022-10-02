.class public Lcom/motorola/camera/ui/uicomponents/AbstractComponent$2;
.super Ljava/lang/Object;
.source "AbstractComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/uicomponents/AbstractComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/uicomponents/AbstractComponent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$2;->this$0:Lcom/motorola/camera/ui/uicomponents/AbstractComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$2;->this$0:Lcom/motorola/camera/ui/uicomponents/AbstractComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->remove()V

    return-void
.end method
