.class public Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction;
.super Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;
.source "MultiIntentAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction$MultiIntent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction<",
        "Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction$MultiIntent;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction$MultiIntent;)V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0, p1, p2}, Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;-><init>(ILcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Ljava/lang/Object;)V

    return-void
.end method

.method public static buildMultiIntentAction(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Ljava/util/List;)Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            ">;>;)",
            "Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction$MultiIntent;

    invoke-direct {v0}, Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction$MultiIntent;-><init>()V

    .line 3
    iget-object v1, v0, Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction$MultiIntent;->mIntentList:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4
    iget-object p1, v0, Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction$MultiIntent;->mIntentList:Ljava/util/Set;

    .line 5
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    .line 6
    new-instance p1, Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction;

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction;-><init>(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction$MultiIntent;)V

    return-object p1

    .line 7
    :cond_0
    new-instance p1, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;

    .line 8
    iget-object v0, v0, Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction$MultiIntent;->mIntentList:Ljava/util/Set;

    .line 9
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/detector/results/tidbit/actions/IntentAction;-><init>(Lcom/motorola/camera/detector/results/tidbit/actions/TidbitAction$Resource;Landroid/content/Intent;)V

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
