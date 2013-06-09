.class final Lcom/igexin/a/a/d/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/a/a/d/e;


# instance fields
.field private final a:Lcom/igexin/a/a/b/i;

.field private final b:Lcom/igexin/a/a/d/u;

.field private final c:Lcom/igexin/a/a/d/v;


# direct methods
.method constructor <init>(Lcom/igexin/a/a/b/i;Lcom/igexin/a/a/d/u;Lcom/igexin/a/a/d/v;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/igexin/a/a/d/q;->a:Lcom/igexin/a/a/b/i;

    iput-object p2, p0, Lcom/igexin/a/a/d/q;->b:Lcom/igexin/a/a/d/u;

    iput-object p3, p0, Lcom/igexin/a/a/d/q;->c:Lcom/igexin/a/a/d/v;

    return-void
.end method


# virtual methods
.method public final a(Lcom/igexin/a/a/b/l;I)V
    .locals 2

    instance-of v0, p1, Lcom/igexin/a/a/b/i;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/igexin/a/a/b/i;

    iget-object v0, p0, Lcom/igexin/a/a/d/q;->c:Lcom/igexin/a/a/d/v;

    iget-object v1, p0, Lcom/igexin/a/a/d/q;->a:Lcom/igexin/a/a/b/i;

    invoke-virtual {v0, v1, p1}, Lcom/igexin/a/a/d/v;->a(Lcom/igexin/a/a/b/i;Lcom/igexin/a/a/b/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/a/a/d/q;->b:Lcom/igexin/a/a/d/u;

    invoke-virtual {v0, p1}, Lcom/igexin/a/a/d/u;->a(Lcom/igexin/a/a/b/i;)Z

    :cond_0
    return-void
.end method

.method public final b(Lcom/igexin/a/a/b/l;I)V
    .locals 0

    return-void
.end method
