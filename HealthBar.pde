class HealthBar {
	int mColor;
	int mHealth;
	public HealthBar() {
		mColor = #2E7F18;
		mHealth = 360;
	}

	public void show(int newHealth) {
		noStroke();
		fill(mColor);
		rect(440, 10, newHealth, 20);
	}

	public int getHealth() {
		return mHealth;
	}
	public void setHealth(int newHealth) {
		mHealth = newHealth;
	}
}