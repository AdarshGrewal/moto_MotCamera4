.class public Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture$1;
.super Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;
.source "AlwaysAwareActionsTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;

    invoke-direct {p0, p2, p3, p4}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method


# virtual methods
.method public onActionsListChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->mViewSize:Lcom/motorola/camera/PreviewSize;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->updateTranslations()V

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->onContentListChanged()V

    return-void
.end method

.method public onClick(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsTexture;->onAction(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;)V

    return-void
.end method
