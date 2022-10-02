.class public Lcom/airbnb/lottie/model/content/Repeater;
.super Ljava/lang/Object;
.source "Repeater.java"

# interfaces
.implements Lcom/airbnb/lottie/model/content/ContentModel;


# instance fields
.field public final synthetic $r8$classId:I

.field public final copies:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field public final hidden:Z

.field public final name:Ljava/lang/String;

.field public final offset:Ljava/lang/Object;

.field public final transform:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;Z)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/lottie/model/content/Repeater;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/airbnb/lottie/model/content/Repeater;->name:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/airbnb/lottie/model/content/Repeater;->copies:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 4
    iput-object p3, p0, Lcom/airbnb/lottie/model/content/Repeater;->offset:Ljava/lang/Object;

    .line 5
    iput-object p4, p0, Lcom/airbnb/lottie/model/content/Repeater;->transform:Ljava/lang/Object;

    .line 6
    iput-boolean p5, p0, Lcom/airbnb/lottie/model/content/Repeater;->hidden:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/airbnb/lottie/model/content/Repeater;->$r8$classId:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/airbnb/lottie/model/content/Repeater;->name:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/airbnb/lottie/model/content/Repeater;->offset:Ljava/lang/Object;

    .line 10
    iput-object p3, p0, Lcom/airbnb/lottie/model/content/Repeater;->transform:Ljava/lang/Object;

    .line 11
    iput-object p4, p0, Lcom/airbnb/lottie/model/content/Repeater;->copies:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 12
    iput-boolean p5, p0, Lcom/airbnb/lottie/model/content/Repeater;->hidden:Z

    return-void
.end method


# virtual methods
.method public toContent(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;)Lcom/airbnb/lottie/animation/content/Content;
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/model/content/Repeater;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    new-instance v0, Lcom/airbnb/lottie/animation/content/RepeaterContent;

    invoke-direct {v0, p1, p2, p0}, Lcom/airbnb/lottie/animation/content/RepeaterContent;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/Repeater;)V

    return-object v0

    .line 2
    :goto_0
    new-instance v0, Lcom/airbnb/lottie/animation/content/RectangleContent;

    invoke-direct {v0, p1, p2, p0}, Lcom/airbnb/lottie/animation/content/RectangleContent;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/Repeater;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/airbnb/lottie/model/content/Repeater;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string v0, "RectangleShape{position="

    .line 1
    invoke-static {v0}, Landroid/support/v4/media/RatingCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/model/content/Repeater;->offset:Ljava/lang/Object;

    check-cast v1, Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/Repeater;->transform:Ljava/lang/Object;

    check-cast p0, Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
