easyffmpeg_sources = [
  'main.vala',
  'ffmpeg_actions.vala'
]

easyffmpeg_deps = [
  dependency('gio-2.0', version: '>= 2.50'),
  dependency('gtk+-3.0', version: '>= 3.22'),
  meson.get_compiler('vala').find_library('posix')
]

gnome = import('gnome')

easyffmpeg_sources += gnome.compile_resources('easyffmpeg-resources',
  'easyffmpeg.gresource.xml',
  c_name: 'easyffmpeg'
)

executable('easyffmpeg', easyffmpeg_sources,
  dependencies: easyffmpeg_deps,
  install: true,
)
