.class public final synthetic Lcom/motorola/camera/fragments/ArraySettingDialogFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/fragments/ArraySettingDialogFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fragments/ArraySettingDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fragments/ArraySettingDialogFragment$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/fragments/ArraySettingDialogFragment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/fragments/ArraySettingDialogFragment$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/fragments/ArraySettingDialogFragment;

    check-cast p1, Landroid/hardware/camera2/CaptureResult$Key;

    sget v0, Lcom/motorola/camera/fragments/ArraySettingDialogFragment;->$r8$clinit:I

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/fragments/SettingDialogFragment;->mSupportedValues:Ljava/util/List;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
