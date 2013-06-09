.class public final Lcom/a/a/a/h/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/h/a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(I)Landroid/view/animation/Animation;
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/h/a;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0
.end method
