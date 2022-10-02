.class public final synthetic Lcom/motorola/camera/settings/Setting$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/settings/Setting;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/settings/Setting;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/settings/Setting$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/settings/Setting;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/settings/Setting;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/settings/Setting;->mDisabledValues:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mDisabledValues:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
