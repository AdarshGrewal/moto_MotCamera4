.class public final Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;
.super Landroidx/preference/Preference;
.source "WaterMarkEditPreference.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference$SignatureTextWatcher;,
        Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference$WatermarkEditText;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0002\u000b\u000cB3\u0008\u0007\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;",
        "Landroidx/preference/Preference;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "defStyleRes",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;II)V",
        "SignatureTextWatcher",
        "WatermarkEditText",
        "MotCamera4-v9.0.12.67_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public countTextView:Landroid/widget/TextView;

.field public signatureEditText:Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference$WatermarkEditText;

.field public signatureTextView:Landroid/widget/TextView;

.field public signatureTextWatcher:Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference$SignatureTextWatcher;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const p3, 0x7f040382

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    .line 1
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public final checkSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string p0, ""

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 1
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    .line 3
    invoke-static {v3}, Ljava/lang/Character;->isValidCodePoint(I)Z

    .line 4
    invoke-static {v3}, Ljava/lang/Character;->isIdeographic(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x2

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    :goto_0
    rsub-int/lit8 v5, v2, 0x1e

    if-le v4, v5, :cond_3

    return-object p0

    .line 6
    :cond_3
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result p0

    add-int/2addr v1, p0

    .line 7
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v3, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/2addr v2, v4

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_1

    :cond_4
    :goto_1
    return-object p0
.end method

.method public final getSignatureTextLength(Ljava/lang/String;)I
    .locals 3

    const/4 p0, 0x0

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    move v0, p0

    .line 1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p0, v1, :cond_2

    .line 2
    invoke-virtual {p1, p0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 3
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr p0, v2

    .line 4
    invoke-static {v1}, Ljava/lang/Character;->isValidCodePoint(I)Z

    .line 5
    invoke-static {v1}, Ljava/lang/Character;->isIdeographic(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    .line 6
    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    move p0, v0

    :goto_2
    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-nez p1, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const/4 v1, 0x0

    const-string v2, "com.motorola.camera_watermark"

    .line 4
    invoke-virtual {v0, v2, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v1, "pref_key_signature"

    const-string v2, ""

    .line 5
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    :goto_0
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;->checkSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    sget-object v1, Lcom/motorola/camera/service/WatermarkGenerator$LazyLoader;->INSTANCE:Lcom/motorola/camera/service/WatermarkGenerator;

    .line 8
    invoke-virtual {v1, v0}, Lcom/motorola/camera/service/WatermarkGenerator;->setSignText(Ljava/lang/String;)V

    .line 9
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference$SignatureTextWatcher;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference$SignatureTextWatcher;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;->signatureTextWatcher:Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference$SignatureTextWatcher;

    const v1, 0x7f0a034b

    .line 10
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;->countTextView:Landroid/widget/TextView;

    .line 11
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;->setTvCountText(Ljava/lang/String;)V

    const v1, 0x7f0a034c

    .line 12
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference$WatermarkEditText;

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;->signatureEditText:Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference$WatermarkEditText;

    if-nez v1, :cond_2

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    const/4 v0, 0x1

    .line 15
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 16
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;->signatureTextWatcher:Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference$SignatureTextWatcher;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :goto_1
    const v0, 0x7f0a034d

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;->signatureTextView:Landroid/widget/TextView;

    :goto_2
    return-void
.end method

.method public onDetached()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->unregisterDependency()V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;->signatureEditText:Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference$WatermarkEditText;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;->signatureTextWatcher:Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference$SignatureTextWatcher;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :goto_0
    return-void
.end method

.method public final setEnable(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;->signatureEditText:Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference$WatermarkEditText;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;->signatureEditText:Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference$WatermarkEditText;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 4
    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;->countTextView:Landroid/widget/TextView;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 5
    :goto_2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;->signatureTextView:Landroid/widget/TextView;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 6
    :goto_3
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;->signatureEditText:Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference$WatermarkEditText;

    if-nez p0, :cond_4

    goto :goto_5

    :cond_4
    if-nez p0, :cond_5

    const/4 p1, 0x0

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    move-result p1

    :goto_4
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :goto_5
    return-void
.end method

.method public final setTvCountText(Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 2
    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1104f3

    goto :goto_0

    :cond_0
    const v0, 0x7f1104f2

    .line 3
    :goto_0
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 4
    invoke-virtual {v1, v0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInstance().getString(countStringRes)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;->countTextView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    move p0, v5

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/WaterMarkEditPreference;->getSignatureTextLength(Ljava/lang/String;)I

    move-result p0

    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v5

    const/4 p0, 0x1

    const/16 p1, 0x1e

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, p0

    .line 9
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "java.lang.String.format(format, *args)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method
