.class public Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;
.super Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;
.source "MLrnGroundTruthsSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GroundTruthsListItem"
.end annotation


# instance fields
.field public mSelected:Z

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->this$0:Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;

    .line 2
    invoke-direct {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mSelected:Z

    return-void
.end method


# virtual methods
.method public onSingleTap(Landroid/graphics/PointF;JJ)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mSelected:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mSelected:Z

    .line 2
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->setSelected(Z)V

    .line 3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->this$0:Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mListAdapter:Lcom/motorola/camera/ui/widgets/gl/ListAdapter;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    .line 6
    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;

    .line 7
    iget-boolean p3, p2, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mSelected:Z

    if-eqz p3, :cond_0

    .line 8
    iget-object p2, p2, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->mValue:Ljava/lang/Object;

    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p2, 0x2c

    .line 10
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_2

    const/4 p0, 0x0

    const-string p2, ","

    .line 12
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p0, p2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    const-string p0, ""

    .line 13
    :goto_1
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->MCF_MLRN_GROUND_TRUTHS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->undoMotionEventTransforms(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 2
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mTouchBehavior:Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/ButtonTouchBehavior;->onTouch(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setSelected(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector$GroundTruthsListItem;->mSelected:Z

    .line 2
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/PopupListItem;->setSelected(Z)V

    return-void
.end method
