.class public Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture$4;
.super Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionButtonTexture;
.source "AlwaysAwareActionsCardTexture.java"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture$4;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;

    invoke-direct {p0, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionButtonTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;I)V

    return-void
.end method


# virtual methods
.method public onActionClick(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture$4;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/AlwaysAwareActionsCardTexture;->onClick(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;)V

    return-void
.end method
