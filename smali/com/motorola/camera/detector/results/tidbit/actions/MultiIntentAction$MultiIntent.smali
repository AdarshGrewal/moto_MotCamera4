.class public Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction$MultiIntent;
.super Ljava/lang/Object;
.source "MultiIntentAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiIntent"
.end annotation


# instance fields
.field public mIntentList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/detector/results/tidbit/actions/MultiIntentAction$MultiIntent;->mIntentList:Ljava/util/Set;

    return-void
.end method
