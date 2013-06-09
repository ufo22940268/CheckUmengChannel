.class public final Lcom/igexin/a/a/d/b;
.super Lcom/igexin/a/a/d/v;


# instance fields
.field private a:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/util/regex/Pattern;)V
    .locals 0

    invoke-direct {p0}, Lcom/igexin/a/a/d/v;-><init>()V

    iput-object p1, p0, Lcom/igexin/a/a/d/b;->a:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public final a(Lcom/igexin/a/a/b/i;Lcom/igexin/a/a/b/i;)Z
    .locals 2

    iget-object v0, p0, Lcom/igexin/a/a/d/b;->a:Ljava/util/regex/Pattern;

    invoke-virtual {p2}, Lcom/igexin/a/a/b/i;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, ":matchesOwn(%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/igexin/a/a/d/b;->a:Ljava/util/regex/Pattern;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
