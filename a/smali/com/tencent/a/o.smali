.class public final Lcom/tencent/a/o;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/a/o;->a:Ljava/lang/String;

    iput p2, p0, Lcom/tencent/a/o;->b:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/a/o;-><init>(Ljava/lang/String;I)V

    return-void
.end method
