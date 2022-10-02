.class public Lcom/motorola/camera/ui/widgets/AlertPopup$1;
.super Ljava/lang/Object;
.source "AlertPopup.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/ui/widgets/AlertPopup;->setDismissFutureDialogs(Lcom/motorola/camera/settings/SettingsManager$Key;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$setting:Lcom/motorola/camera/settings/SettingsManager$Key;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/AlertPopup;Lcom/motorola/camera/settings/SettingsManager$Key;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$1;->val$setting:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/AlertPopup$1;->val$setting:Lcom/motorola/camera/settings/SettingsManager$Key;

    xor-int/lit8 p1, p2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void
.end method
