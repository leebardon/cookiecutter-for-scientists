### A Pluto.jl notebook ###
# v0.15.1

using Markdown
using InteractiveUtils

# This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the following 'mock version' of @bind gives bound variables a default value (instead of an error).
macro bind(def, element)
    quote
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(Base.get, el) ? Base.get(el) : missing
        el
    end
end

# ╔═╡ d8b765b8-a031-494f-a73a-c27ab8523de4
using PlutoUI

# ╔═╡ d422335a-733d-41f2-835b-4a16c3c02ae5
# Multiple lines
begin
	c = "feck"
	c
end 

# ╔═╡ 03395de8-eebf-11eb-128e-8f075e0ad488
a = "hi"

# ╔═╡ d6367e56-ab27-4173-a396-2a12d177c852
# Prints in terminal 
println("hey, terminal buoy")

# ╔═╡ 2a0f4f65-cfe7-42bc-a455-721c2822d771
begin
	b = "I am b"
	println(b)
end

# ╔═╡ 8f636786-01ed-47d9-8cdc-12c396966d94
# Markdown 
md""" # PlutoUI 
#### Tutorials, innit
+ iPython widget
+ panel

"""

# ╔═╡ 3fc54cfc-b57d-4b4e-8c84-f80db5a1663c
# PlutoUI features and methods 
varinfo(PlutoUI)

# ╔═╡ 066c0eed-fa84-4a03-aa66-793234a0518d
x = "heyyyyyy"

# ╔═╡ 0c728d1c-86db-4254-a342-5b8d0c1d47f7
println(x)

# ╔═╡ 211a60b3-8c60-4274-a384-9de25e1659f9
md"""## Display Result in Pluto"""


# ╔═╡ 15c44b9e-1730-4136-9628-6fa0e92f85ab
# Method 1: using PlutoUI with_terminal

with_terminal() do
	x = "Hey from terminal"
	println(x)
end
	


# ╔═╡ 01b5e58c-5797-4e99-8eb6-d39655e3254e
# Method 2

with_terminal(println, x)

# ╔═╡ 310d5ce3-477d-4057-a7e7-f284e3d9c651
# Method 3 - PlutoUI Print()

Print(x)

# ╔═╡ 654828c6-896c-4d45-9318-d0a9578ca18b
md""" # The PlutoUI Widget
+ Buttons 
+ TextInputs
+ Media Files

"""

# ╔═╡ 232f8fbe-e115-4007-870f-258954bcab84
# Buttons 
Button("Submit")

# ╔═╡ 602c002f-00ef-4c1b-9b94-34eb2c9c70bd
@bind submit_thing Button("Submit")

# ╔═╡ 5e62c6ff-8141-4691-ade9-1fd42a54640d
begin
	submit_thing
	md" I been clicked bruh "
end


# ╔═╡ 909d5021-5d93-4941-8cf6-b18475ddaaf1
# Radio buttons 

@bind gender Radio(["Male", "Female"])

# ╔═╡ 1aa90c80-ab92-4ce7-b8de-c90df07b72b1
gender

# ╔═╡ d1974a8a-3206-41f0-bb3a-366be3ce732c
# Checkbox 

@bind status CheckBox()

# ╔═╡ e5009cac-1350-4168-ae16-e5be5675d48b
status

# ╔═╡ 34622788-ad5b-43c3-9797-8ad897b46591
if status
	md"I'm true bby"
else
	md"I'm false bby"
end 

# ╔═╡ 2c132551-7d97-4d4e-b70b-4f636eaa79ab
md""" ## Text Input """

# ╔═╡ a46791d6-a3eb-4f0f-9561-f6ba5d778443
@bind your_name TextField()

# ╔═╡ a587402d-a4fb-4039-ad3c-0b49d5899a5c
your_name

# ╔═╡ c272f7fe-7e93-4b66-b48d-5706dbbdc511
# Text Area

@bind message TextField((30, 7))

# ╔═╡ b45df9bd-78a9-4a98-82d6-ad01feaf77b2
lowercase(message)

# ╔═╡ 3ec39403-16f0-4d41-9c56-eee316e55779
# Password (hides the input)

@bind passwd PasswordField()

# ╔═╡ b63435ff-ccbc-4f5b-894a-1c7f8419a3dd
passwd

# ╔═╡ 88ee1c54-e1c3-4411-b203-c72faeb93693
# Date input 

@bind dob DateField()

# ╔═╡ 7bc35689-eb9f-47d2-9f68-2757cc755cf6
dob

# ╔═╡ 52f8183e-729d-45a1-bc05-8aba520e60a6
typeof(dob)

# ╔═╡ a3af24bc-1485-46a9-a411-fcdfcdf84218
# Time input 

@bind time TimeField()

# ╔═╡ b286b5ff-6892-42a8-a9c9-54abb4c80160
time

# ╔═╡ 50777db2-2b6a-441b-bb92-e9ed33f883f7
md""" ## Select and MultiSelect"""

# ╔═╡ 3e1c4084-bead-42b9-bbc7-4ca05fb97138
@bind location Select(["London", "LA", "Bangkok", "Belfast"])

# ╔═╡ 18d15af3-3306-422a-9a72-61cc5d72c896
l = "I'm moving to $location"

# ╔═╡ 88680329-9b29-49bc-8714-cd805d8d40f7
# Using dictionary 

@bind place Select(["UpTown"=>1, "DownTown"=>2])

# ╔═╡ a5b5f07c-c853-4092-b49d-897d3b7fdcb2
place

# ╔═╡ 550f5174-2a7a-4144-9ce3-7a2bd7f1fcf0
# Using MutliSelect 

@bind jobs MultiSelect(["food man", "doctor", "sausage maker"], default=["doctor"])

# ╔═╡ 2e706846-972b-45e8-bae9-09a9a154e6cf
jobs


# ╔═╡ 5ae35e87-6bed-4479-9371-dc048ac176bd
# Slider 

@bind salary Slider(50:2000)

# ╔═╡ 52efb5ea-d62c-44ea-8f95-ef4b0e28319f
salary

# ╔═╡ 4d0899e0-7019-4ba4-9cb8-61bbcfa8a59c
# Slider with value display (show_value is keyword)

@bind salary2 Slider(50:2000, show_value=true)

# ╔═╡ 75c26fc1-5bc8-4b99-b933-a60305325727
md""" ## Working with Media
+ MIME
+ Resource
"""

# ╔═╡ 7170e5e5-d725-47ef-8f00-cff011f1c1dd
md""" Quick note - you can check live docs as you go along, to find out more about a particular option, simply using **?** followed by the name of the service: """ 

# ╔═╡ 26e77cee-6bd7-4f2c-8dc1-ad85aeeb7d19


# ╔═╡ 7da567fa-2ed8-4061-a8b7-6c137b969bbf
# Display an image 

Show(MIME"image/png"(), read("crap.png"))

# ╔═╡ cf3293b5-d847-45f9-b7cf-f6cfb99084dd


# ╔═╡ db8e3e85-e172-4d9a-a9c2-31c2dd2c7e62
Show(MIME"text/html"(), """<p style="color:blue"> Hi, I'm blue</p>""")

# ╔═╡ 1a869408-ff43-4ffc-9046-530a5e9e79cf
md""" ## ColorPicker & FilePicker """

# ╔═╡ f7606ff6-09d9-416e-8e86-7f82ec36424a
@bind leecolour ColorStringPicker()

# ╔═╡ 8b32e017-1acf-48b1-8923-80629effebd7
Show(MIME"text/html"(), """<p style="color:$leecolour"> Hi, I'm Lee's colour</p>""")

# ╔═╡ faa81e7a-721a-4c6a-8f49-f8aaef617faa
# Filepicker or Upload 

@bind my_files FilePicker()

# ╔═╡ 76c18b08-5c09-4255-b796-182c935b2459
my_files

# ╔═╡ 3ecafb26-dd2d-4d19-968e-d26234209976
Show(MIME"image/jpg"(), my_files["data"])

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
PlutoUI = "~0.7.9"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

[[Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "81690084b6198a2e1da36fcfda16eeca9f9f24e4"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.1"

[[Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[Parsers]]
deps = ["Dates"]
git-tree-sha1 = "c8abc88faa3f7a3950832ac5d6e690881590d6dc"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "1.1.0"

[[PlutoUI]]
deps = ["Base64", "Dates", "InteractiveUtils", "JSON", "Logging", "Markdown", "Random", "Reexport", "Suppressor"]
git-tree-sha1 = "44e225d5837e2a2345e69a1d1e01ac2443ff9fcb"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.9"

[[Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[Random]]
deps = ["Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[Reexport]]
git-tree-sha1 = "5f6c21241f0f655da3952fd60aa18477cf96c220"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.1.0"

[[Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[Suppressor]]
git-tree-sha1 = "a819d77f31f83e5792a76081eee1ea6342ab8787"
uuid = "fd094767-a336-5f1f-9728-57cf17d0bbfb"
version = "0.2.0"

[[Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"
"""

# ╔═╡ Cell order:
# ╠═d422335a-733d-41f2-835b-4a16c3c02ae5
# ╠═03395de8-eebf-11eb-128e-8f075e0ad488
# ╠═d6367e56-ab27-4173-a396-2a12d177c852
# ╠═2a0f4f65-cfe7-42bc-a455-721c2822d771
# ╠═8f636786-01ed-47d9-8cdc-12c396966d94
# ╠═d8b765b8-a031-494f-a73a-c27ab8523de4
# ╠═3fc54cfc-b57d-4b4e-8c84-f80db5a1663c
# ╠═066c0eed-fa84-4a03-aa66-793234a0518d
# ╠═0c728d1c-86db-4254-a342-5b8d0c1d47f7
# ╠═211a60b3-8c60-4274-a384-9de25e1659f9
# ╠═15c44b9e-1730-4136-9628-6fa0e92f85ab
# ╠═01b5e58c-5797-4e99-8eb6-d39655e3254e
# ╠═310d5ce3-477d-4057-a7e7-f284e3d9c651
# ╠═654828c6-896c-4d45-9318-d0a9578ca18b
# ╠═232f8fbe-e115-4007-870f-258954bcab84
# ╠═602c002f-00ef-4c1b-9b94-34eb2c9c70bd
# ╠═5e62c6ff-8141-4691-ade9-1fd42a54640d
# ╠═909d5021-5d93-4941-8cf6-b18475ddaaf1
# ╠═1aa90c80-ab92-4ce7-b8de-c90df07b72b1
# ╠═d1974a8a-3206-41f0-bb3a-366be3ce732c
# ╠═e5009cac-1350-4168-ae16-e5be5675d48b
# ╠═34622788-ad5b-43c3-9797-8ad897b46591
# ╠═2c132551-7d97-4d4e-b70b-4f636eaa79ab
# ╠═a46791d6-a3eb-4f0f-9561-f6ba5d778443
# ╠═a587402d-a4fb-4039-ad3c-0b49d5899a5c
# ╠═c272f7fe-7e93-4b66-b48d-5706dbbdc511
# ╠═b45df9bd-78a9-4a98-82d6-ad01feaf77b2
# ╠═3ec39403-16f0-4d41-9c56-eee316e55779
# ╠═b63435ff-ccbc-4f5b-894a-1c7f8419a3dd
# ╠═88ee1c54-e1c3-4411-b203-c72faeb93693
# ╠═7bc35689-eb9f-47d2-9f68-2757cc755cf6
# ╠═52f8183e-729d-45a1-bc05-8aba520e60a6
# ╠═a3af24bc-1485-46a9-a411-fcdfcdf84218
# ╠═b286b5ff-6892-42a8-a9c9-54abb4c80160
# ╟─50777db2-2b6a-441b-bb92-e9ed33f883f7
# ╠═3e1c4084-bead-42b9-bbc7-4ca05fb97138
# ╠═18d15af3-3306-422a-9a72-61cc5d72c896
# ╠═88680329-9b29-49bc-8714-cd805d8d40f7
# ╠═a5b5f07c-c853-4092-b49d-897d3b7fdcb2
# ╠═550f5174-2a7a-4144-9ce3-7a2bd7f1fcf0
# ╠═2e706846-972b-45e8-bae9-09a9a154e6cf
# ╠═5ae35e87-6bed-4479-9371-dc048ac176bd
# ╠═52efb5ea-d62c-44ea-8f95-ef4b0e28319f
# ╠═4d0899e0-7019-4ba4-9cb8-61bbcfa8a59c
# ╟─75c26fc1-5bc8-4b99-b933-a60305325727
# ╟─7170e5e5-d725-47ef-8f00-cff011f1c1dd
# ╠═26e77cee-6bd7-4f2c-8dc1-ad85aeeb7d19
# ╠═7da567fa-2ed8-4061-a8b7-6c137b969bbf
# ╠═cf3293b5-d847-45f9-b7cf-f6cfb99084dd
# ╠═db8e3e85-e172-4d9a-a9c2-31c2dd2c7e62
# ╟─1a869408-ff43-4ffc-9046-530a5e9e79cf
# ╠═f7606ff6-09d9-416e-8e86-7f82ec36424a
# ╠═8b32e017-1acf-48b1-8923-80629effebd7
# ╠═faa81e7a-721a-4c6a-8f49-f8aaef617faa
# ╠═76c18b08-5c09-4255-b796-182c935b2459
# ╠═3ecafb26-dd2d-4d19-968e-d26234209976
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
