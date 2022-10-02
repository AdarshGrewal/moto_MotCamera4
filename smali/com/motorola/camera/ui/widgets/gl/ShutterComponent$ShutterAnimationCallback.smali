.class public Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$ShutterAnimationCallback;
.super Ljava/lang/Object;
.source "ShutterComponent.java"

# interfaces
.implements Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedBitmapTexture$AnimationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShutterAnimationCallback"
.end annotation


# instance fields
.field public final mEndVisibility:Z

.field public final mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$ShutterAnimationCallback;->this$0:Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p3, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$ShutterAnimationCallback;->mEndVisibility:Z

    .line 3
    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$ShutterAnimationCallback;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$ShutterAnimationCallback;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$ShutterAnimationCallback;->mEndVisibility:Z

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$ShutterAnimationCallback;->this$0:Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$ShutterAnimationCallback;->this$0:Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    return-void
.end method
