private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.expect(user: [ :name, :age, :password, :email, :password_confirmation ]) # ← password_confirmationを追加 
    end
end
