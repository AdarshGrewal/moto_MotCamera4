.class public Lcom/motorola/camera/ui/widgets/gl/CalibrationErrorMessageComponent$1;
.super Ljava/lang/Object;
.source "CalibrationErrorMessageComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/widgets/gl/CalibrationErrorMessageComponent;->onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/CalibrationErrorMessageComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/CalibrationErrorMessageComponent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CalibrationErrorMessageComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/CalibrationErrorMessageComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CalibrationErrorMessageComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/CalibrationErrorMessageComponent;

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CalibrationErrorMessageComponent;->mLabelTexture:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    return-void
.end method
