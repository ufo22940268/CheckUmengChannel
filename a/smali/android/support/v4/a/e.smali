.class Landroid/support/v4/a/e;
.super Landroid/support/v4/a/d;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 1

    invoke-static {p1}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
