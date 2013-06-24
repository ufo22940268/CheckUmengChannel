.class public final Lcom/gridlayout/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gridlayout/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final GridLayout:[I = null

.field public static final GridLayout_Layout:[I = null

.field public static final GridLayout_Layout_android_layout_column:I = 0x1

.field public static final GridLayout_Layout_android_layout_gravity:I = 0x0

.field public static final GridLayout_Layout_layout_columnSpan:I = 0x4

.field public static final GridLayout_Layout_layout_row:I = 0x2

.field public static final GridLayout_Layout_layout_rowSpan:I = 0x3

.field public static final GridLayout_alignmentMode:I = 0x1

.field public static final GridLayout_android_orientation:I = 0x0

.field public static final GridLayout_columnCount:I = 0x3

.field public static final GridLayout_columnOrderPreserved:I = 0x6

.field public static final GridLayout_rowCount:I = 0x2

.field public static final GridLayout_rowOrderPreserved:I = 0x5

.field public static final GridLayout_useDefaultMargins:I = 0x4

.field public static final ViewGroup_MarginLayout:[I = null

.field public static final ViewGroup_MarginLayout_android_layout_margin:I = 0x0

.field public static final ViewGroup_MarginLayout_android_layout_marginBottom:I = 0x4

.field public static final ViewGroup_MarginLayout_android_layout_marginLeft:I = 0x1

.field public static final ViewGroup_MarginLayout_android_layout_marginRight:I = 0x3

.field public static final ViewGroup_MarginLayout_android_layout_marginTop:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 29
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/gridlayout/R$styleable;->GridLayout:[I

    .line 30
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/gridlayout/R$styleable;->GridLayout_Layout:[I

    .line 43
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/gridlayout/R$styleable;->ViewGroup_MarginLayout:[I

    return-void

    .line 29
    :array_0
    .array-data 0x4
        0xc4t 0x0t 0x1t 0x1t
        0x14t 0x0t 0x1t 0x7ft
        0x15t 0x0t 0x1t 0x7ft
        0x16t 0x0t 0x1t 0x7ft
        0x17t 0x0t 0x1t 0x7ft
        0x18t 0x0t 0x1t 0x7ft
        0x19t 0x0t 0x1t 0x7ft
    .end array-data

    .line 30
    :array_1
    .array-data 0x4
        0xb3t 0x0t 0x1t 0x1t
        0x4ct 0x1t 0x1t 0x1t
        0x1at 0x0t 0x1t 0x7ft
        0x1bt 0x0t 0x1t 0x7ft
        0x1ct 0x0t 0x1t 0x7ft
    .end array-data

    .line 43
    :array_2
    .array-data 0x4
        0xf6t 0x0t 0x1t 0x1t
        0xf7t 0x0t 0x1t 0x1t
        0xf8t 0x0t 0x1t 0x1t
        0xf9t 0x0t 0x1t 0x1t
        0xfat 0x0t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
