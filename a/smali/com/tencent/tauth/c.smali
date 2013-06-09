.class public final Lcom/tencent/tauth/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/tencent/a/f;

.field private b:Lcom/tencent/a/g;

.field private c:Lcom/tencent/a/h;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/a/h;

    invoke-direct {v0, p1, p2}, Lcom/tencent/a/h;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/tauth/c;->c:Lcom/tencent/a/h;

    new-instance v0, Lcom/tencent/a/f;

    iget-object v1, p0, Lcom/tencent/tauth/c;->c:Lcom/tencent/a/h;

    invoke-direct {v0, v1}, Lcom/tencent/a/f;-><init>(Lcom/tencent/a/h;)V

    iput-object v0, p0, Lcom/tencent/tauth/c;->a:Lcom/tencent/a/f;

    new-instance v0, Lcom/tencent/a/g;

    iget-object v1, p0, Lcom/tencent/tauth/c;->c:Lcom/tencent/a/h;

    invoke-direct {v0, v1}, Lcom/tencent/a/g;-><init>(Lcom/tencent/a/h;)V

    iput-object v0, p0, Lcom/tencent/tauth/c;->b:Lcom/tencent/a/g;

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/c;
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.tencent.tauth.AuthActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lcom/tencent/tauth/c;

    invoke-direct {v0, p0, p1}, Lcom/tencent/tauth/c;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6ca1\u6709\u5728AndroidManifest.xml\u4e2d\u68c0\u6d4b\u5230com.tencent.open.AuthActivity,\u8bf7\u52a0\u4e0acom.tencent.open.AuthActivity,\u5e76\u914d\u7f6e<data android:scheme=\"tencent"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" />,\u8be6\u7ec6\u4fe1\u606f\u8bf7\u67e5\u770b\u5b98\u7f51\u6587\u6863."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\u914d\u7f6e\u793a\u4f8b\u5982\u4e0b: \n<activity\n\t android:name=\"com.tencent.tauth.AuthActivity\"\n\t android:noHistory=\"true\"\n\t android:launchMode=\"singleTask\"\n<intent-filter>\n    <action android:name=\"android.intent.action.VIEW\" />\n\t <category android:name=\"android.intent.category.DEFAULT\" />\n    <category android:name=\"android.intent.category.BROWSABLE\" />\n    <data android:scheme=\"tencent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" />\n</intent-filter>\n</activity>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Tencent"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/b;)I
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "scope"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/tauth/c;->b:Lcom/tencent/a/g;

    const-string v2, "action_login"

    invoke-virtual {v1, p1, v2, v0, p3}, Lcom/tencent/a/g;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/tauth/b;)I

    move-result v0

    return v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tauth/c;->c:Lcom/tencent/a/h;

    invoke-virtual {v0}, Lcom/tencent/a/h;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tauth/c;->c:Lcom/tencent/a/h;

    invoke-virtual {v0, p1}, Lcom/tencent/a/h;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/a;)V
    .locals 6

    iget-object v0, p0, Lcom/tencent/tauth/c;->a:Lcom/tencent/a/f;

    iget-object v1, p0, Lcom/tencent/tauth/c;->c:Lcom/tencent/a/h;

    invoke-virtual {v1}, Lcom/tencent/a/h;->e()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/a/f;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/a;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tauth/c;->c:Lcom/tencent/a/h;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(IILandroid/content/Intent;)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/tauth/c;->b:Lcom/tencent/a/g;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/a/g;->a(IILandroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tauth/c;->c:Lcom/tencent/a/h;

    invoke-virtual {v0}, Lcom/tencent/a/h;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
