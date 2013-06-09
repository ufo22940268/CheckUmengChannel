.class final Lcom/gridlayout/p;
.super Ljava/lang/Object;


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x8000

    iput v0, p0, Lcom/gridlayout/p;->a:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/gridlayout/p;->a:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/high16 v0, -0x8000

    iput v0, p0, Lcom/gridlayout/p;->a:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/gridlayout/p;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
