.class public final synthetic Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/UIManager;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/UIManager;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/UIManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/UIManager;

    .line 1
    sget-object v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent$InitOrder;->SplashDrawingComplete:Lcom/motorola/camera/ui/uicomponents/AbstractComponent$InitOrder;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/UIManager;->initViewStubComponents(Lcom/motorola/camera/ui/uicomponents/AbstractComponent$InitOrder;)V

    return-void

    .line 2
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/UIManager;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/motorola/camera/ui/UIManager;->mIgnoreRotationChanges:Z

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/UIManager;->rotateUI(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
