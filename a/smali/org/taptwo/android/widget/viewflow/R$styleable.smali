.class public final Lorg/taptwo/android/widget/viewflow/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/taptwo/android/widget/viewflow/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CircleFlowIndicator:[I = null

.field public static final CircleFlowIndicator_activeColor:I = 0x0

.field public static final CircleFlowIndicator_activeType:I = 0x7

.field public static final CircleFlowIndicator_centered:I = 0x4

.field public static final CircleFlowIndicator_fadeOut:I = 0x5

.field public static final CircleFlowIndicator_inactiveColor:I = 0x1

.field public static final CircleFlowIndicator_inactiveType:I = 0x6

.field public static final CircleFlowIndicator_radius:I = 0x2

.field public static final CircleFlowIndicator_spacing:I = 0x3

.field public static final TitleFlowIndicator:[I = null

.field public static final TitleFlowIndicator_clipPadding:I = 0x1

.field public static final TitleFlowIndicator_customTypeface:I = 0xa

.field public static final TitleFlowIndicator_footerColor:I = 0x8

.field public static final TitleFlowIndicator_footerLineHeight:I = 0x7

.field public static final TitleFlowIndicator_footerTriangleHeight:I = 0x9

.field public static final TitleFlowIndicator_selectedBold:I = 0x3

.field public static final TitleFlowIndicator_selectedColor:I = 0x2

.field public static final TitleFlowIndicator_selectedSize:I = 0x4

.field public static final TitleFlowIndicator_textColor:I = 0x5

.field public static final TitleFlowIndicator_textSize:I = 0x6

.field public static final TitleFlowIndicator_titlePadding:I

.field public static final ViewFlow:[I

.field public static final ViewFlow_sidebuffer:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/taptwo/android/widget/viewflow/R$styleable;->CircleFlowIndicator:[I

    .line 50
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/taptwo/android/widget/viewflow/R$styleable;->TitleFlowIndicator:[I

    .line 62
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, 0x7f01

    aput v2, v0, v1

    sput-object v0, Lorg/taptwo/android/widget/viewflow/R$styleable;->ViewFlow:[I

    return-void

    .line 41
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
        0x4t 0x0t 0x1t 0x7ft
        0x5t 0x0t 0x1t 0x7ft
        0x6t 0x0t 0x1t 0x7ft
        0x7t 0x0t 0x1t 0x7ft
        0x8t 0x0t 0x1t 0x7ft
    .end array-data

    .line 50
    :array_1
    .array-data 0x4
        0x9t 0x0t 0x1t 0x7ft
        0xat 0x0t 0x1t 0x7ft
        0xbt 0x0t 0x1t 0x7ft
        0xct 0x0t 0x1t 0x7ft
        0xdt 0x0t 0x1t 0x7ft
        0xet 0x0t 0x1t 0x7ft
        0xft 0x0t 0x1t 0x7ft
        0x10t 0x0t 0x1t 0x7ft
        0x11t 0x0t 0x1t 0x7ft
        0x12t 0x0t 0x1t 0x7ft
        0x13t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
